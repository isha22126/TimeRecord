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
# get 'login', to: 'login#index', as: 'login'
# get 'teacher_schedule/:id', 'teacher_schedule#show', as: 'teacher_schedule'

#  <%= link_to 'ログイン画面へ', login_path %>
#  <%= link_to teacher.name, teacher_schedule_path(teacher.id) %>
end
