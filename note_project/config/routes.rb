Rails.application.routes.draw do
  root "home#index"

  get 'home/index'

  get 'home/new'

  post 'home/create'
  
  get 'home/destroy/:post_id' => 'home#destroy'

  get 'home/edit/:post_id' => 'home#edit'

  post 'home/update/:post_id' => 'home#update'
  
end
