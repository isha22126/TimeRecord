Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :schedules
  resources :timetables
  resources :attends
  resources :subjects
  resources :grades
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ログイン
  get '/', to: 'login#index', as: 'login'
  post 'login', to: 'login#create', as: :login_create

  # 管理者機能
  get 'admin_home', to: 'admin_home#index', as: 'admin_home'

  # 出欠機能
  get 'teacher_home', to: 'teacher_home#index',as: 'teacher_home' 
  get 'grade_select', to: 'grade_select#index',as: 'grade_select'
  get 'attendance_list/:grade_id/:date', to: 'attendance_list#show',as: 'attendance_list'
  get 'attendance_subject_new/:grade_id/:date', to: 'attendance_list#subject_new',as: 'attendance_subject_new'
  post 'attendance_subject_create', to: 'attendance_list#subject_create', as:'attendance_subject_create'
  get 'attendance_subject_edit/:grade_id/:date', to: 'attendance_list#subject_edit',as: 'attendance_subject_edit'
  patch 'attendance_subject_update/:timetable_id', to: 'attendance_list#subject_update', as:'attendance_subject_update'
  get 'attendance_new/:student_id/:date', to: 'attendance_list#new',as: 'attendance_new'
  post 'attendance_create', to: 'attendance_list#create', as:'attendance_create'
  get 'attendance_edit/:student_id/:date', to: 'attendance_list#edit',as: 'attendance_edit'
  patch 'attendance_update/:attend_id', to: 'attendance_list#update', as:'attendance_update'

  # 教員スケジュール関連
  get 'teacher_select', to: 'teacher_select#index', as: 'teacher_select'
  get 'teacher_schedule/:id/:date', to: 'teacher_schedule#show', as: 'teacher_schedule'
  get 'teacher_search', to: 'teacher_select#show'
  post 'teacher_search', to: 'teacher_select#search'
  get 'teacher_select', to: 'teacher_schedule#show'

end
