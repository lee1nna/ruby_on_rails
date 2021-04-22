Rails.application.routes.draw do
  root "home#index"

  resources: posts, controller: "home"

  # get 'home/index'

  # get 'home/new'

  # post 'home/create', as: 'posts'
  
  # get 'home/destroy/:post_id' => 'home#destroy', as: 'post_destroy'

  # get 'home/edit/:post_id' => 'home#edit'

  # patch 'home/update/:post_id' => 'home#update', as:'post'
  
end
