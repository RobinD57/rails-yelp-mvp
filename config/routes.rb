Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, shallow: true
  end
end
