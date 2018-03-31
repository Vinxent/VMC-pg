Rails.application.routes.draw do
  get 'home/index'
  get 'home', to: 'home#index'
  get 'about', to: 'home#about'
  get 'forum', to: 'home#forum'
  get 'events', to: 'home#events'
  get 'resources', to: 'home#resources'
  get 'calendar', to: 'home#calendar'
  get 'contact-us', to: 'home#contact-us'

  get 'error', to: 'home#error'

  resources :articles do
  	resources :comments
  end

  root 'home#index'
end
