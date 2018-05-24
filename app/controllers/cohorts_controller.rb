class CohortsController < ApplicationController
  before_action :set_cohort, only: %i[show edit update destroy]

  def index
    @cohorts = Cohort.all
  end

  def show; end

  def new
    @cohort = Cohort.new
  end

  def edit; end

  def create
    @cohort = Cohort.new(cohort_params)

    respond_to do |format|
      if @cohort.save
        format.html { redirect_to @cohort, notice: 'Successfully created Cohort.' }
        format.json { render :show, status: :created, location: @cohort }
      else
        format.html { render :new }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cohort.update(cohort_params)
        format.html { redirect_to @cohort, notice: 'Successfully updated Cohort.' }
        format.json { render :show, status: :ok, location: @cohort }
      else
        format.html { render :edit }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cohort.destroy
    respond_to do |format|
      format.html { redirect_to cohorts_url, notice: 'Successfully destroyed Cohort.' }
      format.json { head :no_content }
    end
  end

  private

  def set_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
  end
end
