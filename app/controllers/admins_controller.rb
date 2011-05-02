class AdminsController < ApplicationController
  # GET /admins
  # GET /admins.xml
  	before_filter :authenticate_admin!

	  def index
	    #@admins = Admin.all
	    @users = User.all
	
	    respond_to do |format|
	      format.html #{ redirect_to(admins_url) }
	      format.xml  { render :xml => @users }
	    end
  end

  # GET /admins/1
  # GET /admins/1.xml
  def show
    @user = User.find(current_user)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
    
  end

  # GET /admins/new
  # GET /admins/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /admins/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /admins
  # POST /admins.xml
  def create
    @user = User.new(params[:admin])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admins/1
  # PUT /admins/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:admin])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
