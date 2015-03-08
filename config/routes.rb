Rails.application.routes.draw do
  resources :installers

  devise_for :users do
    get "/users/sign_out" => "devise/session#destroy", :as => :destroy_user_session
  end
  resources :utilities

  resources :project_utilities

  resources :requested_sales_documents

  resources :project_requested_sales_documents

  resources :contact_types

  resources :contacts

  resources :clients

  resources :project_contacts

  resources :sales_people

  resources :project_statuses

  resources :project_settings

  resources :deal_types

  resources :procurement_tools

  resources :soil_conditions

  resources :project_soil_conditions

  resources :states

  resources :project_sites

  resources :irrigation_responsibilities

  resources :project_type_informations

  resources :project_site_informations

  resources :answers

  resources :questions

  resources :category_option_selections

  resources :category_options

  resources :categories

  resources :project_types

  resources :phones

  resources :projects

  resources :tests

  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
end
