Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root :to => "home#index"

  get "home/index"

  get 'messages/new'
  get 'messages/create'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  get "home/presentations"

  resources :galleries do
    resources :galleryphotos
  end

  resources :posts do
    post 'parse_textile', :on => :collection
    resources :comments
  end

  devise_for :users, :skip => :registrations
  resources :users, only: [:show, :edit, :update]

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # Route all missing paths to 404 page
  get 'users_path', to: "home#missing"
  get '*path', to: "home#missing"

  mount Markitup::Rails::Engine, at: "markitup", as: "markitup"
end
