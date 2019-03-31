class WelcomeController < ApplicationController
	before_action :custom_auth

	def custom_auth
		unless user_signed_in?
			redirect_to new_user_session_url
		end	
	end
	def home
		
	end
end