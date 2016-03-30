Rails.application.routes.draw do

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
  end
end



