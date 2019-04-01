class WelcomeController < ApplicationController
	before_action :custom_auth

	def custom_auth
		unless user_signed_in?
			redirect_to new_user_session_url
		end	
	end
	def home
	  	@errors={}
	  	p Task.joins(:user).select("tasks.task_title,users.name")
	end  	
	def createTask
		p params
		task = Task.new
		task.user_id = current_user.id
		task.task_title = params["task_title"]
		task.task_description = params["task_description"]
		task.save

		@errors =task.errors.messages
		p @errors
		render :home
	end
end