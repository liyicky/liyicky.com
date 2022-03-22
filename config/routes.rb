Rails.application.routes.draw do

  root to: "index#main"

  namespace :mountain do
    namespace :api do

      devise_for :users,
      controllers: {
        sessons: "mountain/api/users/sessions",
        registrations: "mountain/api/users/registrations"
      }

      get "/member-data", to: "member#show"
    end
  end

end
