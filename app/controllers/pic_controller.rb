class PicController < ApplicationController
before_filter :authenticate_user!

	def new
		@pic = Pic.new
	end

	def create
		
		@pic = Pic.new(params[:pic])
		
		respond_to do |format|
			if @pic.save!
				flash[:notice] = 'CSV data was successfully imported.'
				format.html { render :action => "new" }
			else
				flash[:error] = 'CSV data import failed.'
				format.html { render :action => "new" }		
			end
		end	
	end
	
	def show
		@pic = Pic.where("IMAGENAME = ?", params[:id])
		
		@pic.each do |p|
		if p.active_status == 1	
				flash[:notice] = 'User is active'
			respond_to do |format|
				format.html #show.html.erb
				format.xml {render :xml => @pic}
			end	
			deactivate_user(p)
		else
			flash[:notice] = 'You have already downloaded this image. Please contact us if you believe this message is mistaken.'
		
		end
		end
	end

	def deactivate_user(current_pic)

		current_pic.active_status = '0'
		current_pic.save!
		
	end
end
