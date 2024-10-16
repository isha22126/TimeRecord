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
end
