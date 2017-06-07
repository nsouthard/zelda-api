Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do

    namespace :v1 do
      get '/zeldas' => 'zeldas#index'
      post '/zeldas' => 'zeldas#create'
      get '/zeldas/:id' => 'zeldas#show'
      patch '/zeldas/:id' => 'zeldas#edit'
      delete '/zeldas/:id' => 'zeldas#destroy'
    end

    namespace :v2 do
      get '/zeldas' => 'zeldas#index'
      post '/zeldas' => 'zeldas#create'
      get '/zeldas/:id' => 'zeldas#show'
      patch '/zeldas/:id' => 'zeldas#edit'
      delete '/zeldas/:id' => 'zeldas#destroy'
    end

  end
  
end
