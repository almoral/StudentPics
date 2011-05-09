class HomeController < ApplicationController

	def index
	
		if user_signed_in?
			get_pic
		end
		
	end
 
	def get_pic
		
		current_pic = Pic.find_by_email(current_user.email)
		redirect_to "/pic/#{current_pic.IMAGENAME}"
	
	end

end
