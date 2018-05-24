class CreateJoinTableStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :create_join_table_student_cohorts do |t|
      t.integer :student_id
      t.integer :cohort_id

      t.timestamps
    end
  end
end
