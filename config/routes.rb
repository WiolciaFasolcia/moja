Rails.application.routes.draw do
  
 
  resources :wielkoscs
  resources :rozmiars
  resources :rozmiar_ramies
  resources :stan_rowerus do
   # root "rowers#index"
  end
  resources :rodzaj_rowerus do
    root "rowers#index"
  end
  resources :wypozyczenia
  resources :rowers
  resources :klients
  resources :widoks
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  devise_for :users
  resources :users do
    #collection ścieżki do których nie przesyłamy id
    collection do 
      get :show_profile
      get :edit_profile
      get 'edit_profile/password' => 'users#change_password', :as => :change_password
      patch 'edit_profile/password' => 'users#update'

      get 'edit_profile/delete/' => 'users#destroy_confirm', :as => :destroy_confirm
      patch 'edit_profile/delete/' => 'users#destroy_with_password', :as => :destroy
    end
    #member  ścieżki do który przesyłamy id
    member do
      get 'edit/password' => 'users#change_users_password', :as => :change_users_password
      patch 'edit/password' => 'users#update'
      get 'edit/delete/' => 'users#destroy_confirm', :as => :destroy_user_confirm
      patch 'edit/delete/' => 'users#destroy_with_password', :as => :destroy_user
    end
  end
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user


root "widoks#index"
end
