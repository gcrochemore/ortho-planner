Rails.application.routes.draw do
  root to: "application#index"
  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :paper_trail_versions, controller: 'versions'
  devise_scope :user do
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end
  resources :patients, :offices, :practitioners, :practitioner_professions,
            :users, :sessions, :therapies, :acts, :pathologies,
            :health_places, :health_place_types, :absences, :interactions,
            :interaction_objects, :interaction_types, :patients_acts, :schoolings,
            :schools, :school_types, :school_levels, :school_years, :addresses,
            :address_types, :contact_informations, :contact_information_types,
            :patients_pathologies, :patient_availabilities

  resources :waiting_lists do
    member do
      get :take_care
      get :add_interaction
      get :stop_registration
      get :patient_never_return
      get :care_confirm
      get :availability_not_compatible
      get :reregister_on_waiting_list
    end
  end

  get '/export_db', to: 'admin#export_db'
  get '/show_db', to: 'admin#show_db_view'
  get '/show_fixtures', to: 'admin#show_fixtures_view'

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
