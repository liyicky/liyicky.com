Rails.application.routes.draw do

  root to: "index#main"
  get 'contact', to: 'index#contact', as: 'contact'

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
