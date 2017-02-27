Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "meals#index"

  resources :meals do
    member do
      post 'add'
      delete 'remove'
    end
    resources :ingredients
  end

  get '/recipe_box', to: 'mealboxs#index'

end
