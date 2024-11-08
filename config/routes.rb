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

  # 管理者機能
  get 'admin_home', to: 'login#index', as: 'admin_home'

  # 教員スケジュール関連
  get 'teacher_select', to: 'teacher_select#index', as: 'teacher_select'
  get 'teacher_schedule/:id/:date', to: 'teacher_schedule#show', as: 'teacher_schedule'
  get 'teacher_search', to: 'teacher_select#show'
  post 'teacher_search', to: 'teacher_select#search'
  get 'teacher_select', to: 'teacher_schedule#show'

end
