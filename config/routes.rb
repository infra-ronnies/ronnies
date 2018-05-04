Rails.application.routes.draw do
    resources :users, only: [:show] do
    	post 'create'
    	post 'update'
    end

    resources :events, only: [:new, :create, :edit, :update] do
     resources :posts, only: [:show, :index, :edit, :update, :create, :destroy] do
     	resources :post_comments, only: [:create, :destroy]
     end
    end

    resources :ushijimas, only: [:show] do
    	get 'top'
    end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
