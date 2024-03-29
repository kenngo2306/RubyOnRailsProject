Rails.application.routes.draw do



  get 'google_drive/index'

  resources :status_categories

  resources :category_types

  get 'project_type_specifications/new'

  get 'project_type_specifications/edit'

  get 'home/index'

  get 'reports/index'

  get 'reports/monthly_clients'

  get 'reports/monthly_projects'

  get 'reports/completed_projects'

  get 'reports/in_progress_projects'

  get 'reports/preproposal_projects'

  get 'reports/count_of_project_type'

  get 'projects/inactive_projects'



  resources :installers

  devise_for :users do
    get "/users/sign_out" => "devise/session#destroy", :as => :destroy_user_session
  end

  resources :users

  resources :utilities

  resources :project_utilities

  resources :requested_sales_documents

  resources :project_requested_sales_documents

  resources :contact_types

  resources :contacts

  resources :clients

  resources :project_contacts

  resources :sales_people

  resources :project_statuses do
    resources :projects
  end

  resources :project_settings

  resources :deal_types

  resources :procurement_tools

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

  resources :projects

  resources :tests



  get 'dashboard/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

  resources :project_type_specifications do
    post 'create'
  end

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
