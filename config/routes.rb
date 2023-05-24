Rails.application.routes.draw do

  root to: "index#main"
  get 'contact', to: 'index#contact', as: 'contact'
  get 'drivejuku', to: 'index#drivejuku', as: 'drivejuku'
  
  get '/downloads/animalization', to: 'downloads#animalization_assets'

  scope "/mountain/api" do
    devise_for :users,
    controllers: {
      sessions: "mountain/api/users/sessions",
      registrations: "mountain/api/users/registrations"
    }

    get "/member-data", to: "member#show"
  end

  namespace :mountain do
    namespace :api do
    end
  end

end
