Rails.application.routes.draw do
    resources :users, only: [:show, :create] do
    	post 'update'
    end

    resources :events, only: [:new, :create, :edit, :update] do
     resources :posts, only: [:show, :index, :edit, :update, :create, :destroy] do
     	resources :post_comments, only: [:create, :destroy]
     end
    end

    post "posts" => "posts#create"
    resources :ushijimas, only: [:show]
    root "ushijimas#top"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
