Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    get '/posts' => 'posts#index'
    post '/posts' => 'posts#create'
    get '/posts/:id' => 'posts#show'
    patch '/posts/:id' => 'posts#update'
    delete '/posts/:id' => 'posts#destroy'

    get '/images' => 'images#index'
    get '/images/:id' => 'images#show'
  end
end
