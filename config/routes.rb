Rails.application.routes.draw do
  get 'teachers/index'
  get 'courses/index'
  get 'cohorts/index'
  get 'admins/index'
  get 'students/index'
  get 'class/index'
  get 'cohort/index'
  get 'student/index'
  get 'teacher/index'
  get 'teacher_cohorts/index'
  get 'teacher_cohorts/show'
  get 'teacher_cohorts/new'
  get 'teacher_cohorts/edit'
  get 'teacher_cohorts/create'
  get 'teacher_cohorts/update'
  get 'teacher_cohorts/delete'
  get 'student_cohorts/index'
  get 'student_cohorts/show'
  get 'student_cohorts/new'
  get 'student_cohorts/edit'
  get 'student_cohorts/create'
  get 'student_cohorts/update'
  get 'student_cohorts/delete'
  resources :users
  resources :admins
  resources :cohorts
  resources :courses
  resources :teachers
  resources :students
  get 'welcome/index'
 
  root 'welcome#index'
end

