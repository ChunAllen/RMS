class UserRolesController < ApplicationController
  def index
    @user_roles = UserRole.order("created_at")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_roles }
    end
  end

  def show
    @user_role = UserRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_role }
    end
  end

  def new
  	@user_role = UserRole.new

  	respond_to do |format|
  	  format.html #new.html.erb
  	  format.xml { render :xml => @user_role }	
    end
  end

  def edit
    @user_role = UserRole.find(params[:id])
  end

  def create
    @user_role = UserRole.new(params[:user_role])

    respond_to do |format|
      if @user_role.save
        format.html { redirect_to(user_roles_path, :notice => 'User Role was successfully created.') }
        format.xml  { render :xml => @user_role, :status => :created, :location => @user_role }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @user_role = UserRole.find(params[:id])

    respond_to do |format|
      if @user_role.update_attributes(params[:user_role])
        format.html { redirect_to(@user_role, :notice => 'User Role was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_role = UserRole.find(params[:id])
    @user_role.destroy

    respond_to do |format|
      format.html { redirect_to(user_roles_url, :notice => 'User Role has been deleted.') }
      format.xml  { head :ok }
    end
  end	
end
