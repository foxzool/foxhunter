Rails.application.routes.draw do

  scope 'api', defaults: {format: :json} do
    resources :issues
  end

  root :to => 'workspace#index'
  get "*path" => "workspace#index"
  devise_for :users
  resources :users
end
