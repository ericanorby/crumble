Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "meals#index"

  resources :meals do
    resources :ingredients
  end

end
