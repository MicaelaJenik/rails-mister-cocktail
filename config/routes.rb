Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'cocktails', to: 'cocktails#index', as: :cocktails

  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  post 'cocktails', to: 'cocktails#create'

  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail

  get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: :cocktail_doses_new
  post 'cocktails/:cocktail_id/doses', to: 'doses#create', as: :cocktail_doses

  delete 'cocktails/:id/:dose_id', to: 'doses#destroy'
end
