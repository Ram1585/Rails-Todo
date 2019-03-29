Rails.application.routes.draw do
  devise_for :users
	root 'devise/session#new'  
end