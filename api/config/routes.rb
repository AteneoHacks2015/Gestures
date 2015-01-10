Rails.application.routes.draw do
  root 'static_pages#home'

  namespace :api, defaults: {format: :json} do
    resources :users, except: [:new, :edit] do
      collection do
        post '/login', to: 'user_sessions#create', as: 'login'
        delete '/logout', to: 'user_sessions#destroy', as: 'logout'
      end
    end

    resource :user, only: [] do
      get '/items', to: 'items#user_items', as: 'items'
    end

    resources :items, except: [:new, :edit] do
      resources :translations, except: [:new, :edit, :show]
      post '/submit', to: 'items#submit_answer', as: 'submit_answer'
    end

    resources :gestures, only: [:create, :index]
  end
end
