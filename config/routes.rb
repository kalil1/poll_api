Rails.application.routes.draw do
  get 'polls/index'
  get 'polls/show'
  get 'polls/create'
  get 'polls/update'
  get 'polls/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
