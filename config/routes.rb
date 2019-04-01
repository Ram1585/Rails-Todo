Rails.application.routes.draw do
  devise_for :users
  	devise_scope :user do
  		root to: 'devise/sessions#new'
  	end
	get 'welcome', to: 'welcome#home' 
	post 'createtask', to: 'welcome#createTask'


end
