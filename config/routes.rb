Rails.application.routes.draw do

  #Api definition
  namespace :api, defaults:{format: :json} do
    namespace :v1 do
      resources :ip_items, only: [:show]
    end
  end
end
