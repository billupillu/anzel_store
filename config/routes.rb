Rails.application.routes.draw do

  get 'anzels/index'
  get 'anzels/medium'
  get 'anzels/allartists'
  resources :testimonials
  resources :artist_profiles,except: [:index]
 
  mount Spree::Core::Engine, :at => '/'
 
end

Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :candies
    resources :newsletters
    resources :infos
    resources :artists
    resources :new_collections
    resources :advs
    resources :sliders
  end
end




Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :menu_banners
  end
end
