Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # get '/posts', to: 'post#index'
  # post '/posts', to: 'post#create'
  # get '/posts/new', to: 'post#new' , as: 'new_post'
  
  # get '/posts/edit/:id', to: 'post#edit'
  # put '/posts/update/:id', to: 'post#update'
  # delete '/posts/destroy/:id', to: 'post#destroy', as: 'delete_post' 
  # delete '/posts/:id', to: 'posts#destroy', as: 'delete_post'

  resources :posts

=begin
  post_index GET    /post(.:format)                                                                                   post#index
            POST   /post(.:format)                                                                                   post#create
  new_post GET     /post/new(.:format)                                                                               post#new
  edit_post GET    /post/:id/edit(.:format)                                                                          post#edit
      post GET     /post/:id(.:format)                                                                               post#show
            PATCH  /post/:id(.:format)                                                                               post#update
            PUT    /post/:id(.:format)                                                                               post#update
            DELETE /post/:id(.:format)                                                                               post#destroy
=end

  # Defines the root path route ("/")
  # root "posts#index"
end
