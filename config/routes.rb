Rails.application.routes.draw do
    resources :users, only: [:show, :create] do
    	post 'update'
    end
    get "logout" => "users#logout"
    post "login" => "users#login"

    post "post" => "posts#edit"
    patch "update" => "posts#update"
    post "posts" => "posts#create"

    resources :events, only: [:new, :create, :edit, :update] do
     resources :posts, only: [:show, :index, :edit, :update, :create, :destroy] do
      resources :post_comments, only: [:create, :destroy]
     end
    end

    resources :ushijimas, only: [:show]
    root "ushijimas#top"
    get "ushijimas/top" => "ushijimas#top"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
