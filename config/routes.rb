Startup4002::Application.routes.draw do

  resources :users

  resources :weekly_notes do
    collection do
      match 'presentation' => 'weekly_notes#presentation', via: [:get, :post], as: :presentation
      get 'meetings'
      get 'meetingtracker'
      get 'meetingtrackertable'
      get 'tracker_patnotes'
    end
  end
  # Make named path for weekly_notes "new" to pass pat id
  get 'weekly_notes/:id/new' => 'weekly_notes#new_with_pat', as: :new_with_pat
  # Make named path for weekly_notes "tracker_patnotes to pass pat id"
  # get 'weekly_notes/:id/tracker_patnotes' => 'weekly_notes#tracker_patnotes', as: :tracker_patnotes

  resources :facilities
  resources :for_selects
  resources :pats do
    collection do
      # post :complex
      match 'complex' => 'pats#complex', via: [:get, :post], as: :complex
    end
  end



  get "static_pages/home"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

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
