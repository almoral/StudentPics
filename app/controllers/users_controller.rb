class UsersController < ApplicationController
  
  before_filter :authenticate_admin!
  
  def show
    
    @user = User.find(params[:id])
    
  end
  
  def new
  	@user = User.new
  end
  
  def create
  
  	@user = User.new(params[:user])
		
		respond_to do |format|
			if @user.save!
				flash[:notice] = 'New user was successfully created.'
				#format.html { render :action => "new" }
				redirect_to root_path
			else
				flash[:error] = 'There was an error. Please try again in a few minutes.'
				format.html { render :action => "new" }		
			end
		end	

  
  end

end
