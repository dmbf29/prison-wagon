Rails.application.routes.draw do
  # root to: 'lists#index'
  # get '/prisons/:id', to: 'prisons#show'
  # get '/prisons/:prison_id/criminals/new', to: 'criminals#new'
  # post '/prisons/:prison_id/criminals', to: 'criminals#create'
  # delete '/criminals/:id', to: 'criminals#destroy'
  resources :prisons, only: [:show] do
    resources :criminals, only: [:new, :create]
  end
  resources :criminals, only: [:destroy] do
    resources :convictions, only: [:new, :create]
  end
end


# '/criminals/:criminal_id/convictions/new'
# '/criminals/:criminal_id/convictions'
