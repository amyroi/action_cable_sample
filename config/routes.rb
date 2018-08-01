Rails.application.routes.draw do
  get 'activity/show'
  get 'activity/index'
  get 'activity/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
