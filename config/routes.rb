Rails.application.routes.draw do
  root 'static_page#index'

  namespace :api, defaults: {format: :json} do
    resource :search
  end
end
