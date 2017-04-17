Rails.application.routes.draw do
  devise_for :users
  api_version(:module => "V1", :path => {:value => "v1"}) do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
