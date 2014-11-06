Rails.application.routes.draw do


  get    "home/index",                                  as: :home_index
  root   "home#index",                                  as: :root

  # recipes routes
  get	    "/recipes",              to:	"recipes#index",   as: :recipes
  get	    "/recipes/new",          to:	"recipes#new",     as: :recipes_new
  post    "/recipes",              to:	"recipes#create",  as: :recipes_create
  get	    "/recipes/:id",          to:	"recipes#show",    as: :recipes_show
  get	    "/recipes/:id/edit",     to:	"recipes#edit",    as: :recipes_edit
  patch	  "/recipes/:id",          to:	"recipes#update",  as: :recipes_update
  get     "/recipes/:id/delete",   to:  "recipes#destroy", as: :recipes_destroy
  delete  "/recipes/:id",          to:	"recipes#destroy", as: :recipes_delete

  # ingredients routes
  get	    "/ingredients",              to:	"ingredients#index",   as: :ingredients
  get	    "/ingredients/new",          to:	"ingredients#new",     as: :ingredients_new
  post    "/ingredients",              to:	"ingredients#create",  as: :ingredients_create
  get	    "/ingredients/:id",          to:	"ingredients#show",    as: :ingredients_show
  get	    "/ingredients/:id/edit",     to:	"ingredients#edit",    as: :ingredients_edit
  patch	  "/ingredients/:id",          to:	"ingredients#update",  as: :ingredients_update
  get     "/ingredients/:id/delete",   to: "ingredients#destroy", as: :ingredients_destroy
  delete  "/ingredients/:id",          to:	"ingredients#destroy", as: :ingredients_delete

  # measurements routes
  get	    "/measurements",              to:	"measurements#index",   as: :measurements
  get	    "/measurements/new",          to:	"measurements#new",     as: :measurements_new
  post    "/measurements",              to:	"measurements#create",  as: :measurements_create
  get	    "/measurements/:id",          to:	"measurements#show",    as: :measurements_show
  get	    "/measurements/:id/edit",     to:	"measurements#edit",    as: :measurements_edit
  patch	  "/measurements/:id",          to:	"measurements#update",  as: :measurements_update
  get     "/measurements/:id/delete",   to: "measurements#destroy", as: :measurements_destroy
  delete  "/measurements/:id",          to:	"measurements#destroy", as: :measurements_delete



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
