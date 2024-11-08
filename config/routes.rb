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

  get '/', to: 'login#index', as: 'login'
  get 'teacher_select', to: 'teacher_select#index', as: 'teacher_select'
  get 'teacher_schedule/:id/:date', to: 'teacher_schedule#show', as: 'teacher_schedule'
  get 'teacher_search', to: 'teacher_select#show'
  post 'teacher_search', to: 'teacher_select#search'
  get 'teacher_select', to: 'teacher_schedule#show'
# get 'login', to: 'login#index', as: 'login'

#  <%= link_to 'ログイン画面へ', login_path %>
#  <%= link_to teacher.name, teacher_schedule_path(teacher.id) %>
end
