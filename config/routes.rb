Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'youdidntsaythemagicword', to: 'pages#oops'

  resources :posts, path_names: {
    new: 'new/:pass',
    edit: 'edit/:pass',
  }
end
