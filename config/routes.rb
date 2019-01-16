Rails.application.routes.draw do
	get 'users/login' => 'users#index'
	post 'users/login' => 'users#login'
	get 'users/register' => 'users#new'
	post 'users/register' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
