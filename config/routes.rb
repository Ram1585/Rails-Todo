Rails.application.routes.draw do
  devise_for :users
  	devise_scope :user do
  		root to: 'devise/sessions#new'
  	end
	get 'welcome', to: 'welcome#home' 
	get 'createtask', to: 'welcome#home' 
	post 'createtask', to: 'welcome#createTask'
	get 'viewtask', to: 'welcome#viewTask'
	get 'viewdata', to: 'welcome#viewData'
end
