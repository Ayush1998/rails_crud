Rails.application.routes.draw do
  # get 'enrollments/index'
  # get 'enrollments/new'
  # get 'enrollments/create'
  # get 'enrollments/destroy'
  # get 'courses/index'
  # get 'students/index'
  # get 'students/new'
  # get 'students/create'
  # get 'students/show'
  # get 'students/edit'
  # get 'students/update'
  # get 'students/destroy'
  root to: "students#index"
  resources :students
  resources :courses
  resources :enrollments, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
