Rails.application.routes.draw do
  devise_for :users
  get 'foods/new'
  post 'foods/create'
  get 'foods/:id/edit' =>'foods#edit'
  post 'foods/:id/update' =>'foods#update'
  get 'foods/index'
  get 'foods/over'
  root to:"home#index"
  get '/home/new'
  post "home/create" =>"home#create"
  get "foods/home/:id/edit" =>"home#edit"
  get "foods/:id/destroy" =>"foods#destroy"
  post "home/:id/update" =>"home#update"
  get "home/:id/destroy" =>"home#destroy"
  get '/store/index'
  get '/store/:id/destroy' =>'store#destroy'
  get '/store/destroy_all'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
