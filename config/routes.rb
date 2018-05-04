Rails.application.routes.draw do
  get 'comments/create'

  get 'posts/show'

  get 'posts/edit'

  get 'events/new'

  get 'events/edit'

  get 'ushijimas/top'

  get 'ushijimas/ushijima'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
