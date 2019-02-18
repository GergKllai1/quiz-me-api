Rails.application.routes.draw do
  namespace :api do
    resources :quiz, only: [:index]
  end
end
