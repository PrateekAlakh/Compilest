class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private
	
	def confirm_logged_in
		unless session[:user_id]
			redirect_to(access_login_path)
		end
	end

	def is_superuser
		user = AdminUser.find(session[:user_id])
		unless user.superuser?
			redirect_to(tests_path)
		end
	end
  
end
