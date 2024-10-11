Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :schedules
  resources :attends
  resources :timetables
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
