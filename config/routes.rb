Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "pages#home"
  get "about", to: "pages#about"
  get "tech_stack", to: "pages#tech_stack"
  get "finance_tips", to: "pages#finance_tips"
  get "travel", to: "pages#travel"
  get "yoga_tips", to: "pages#yoga_tips"
  get "contact", to: "pages#contact"
  # Defines the root path route ("/")
  # root "posts#index"
end
