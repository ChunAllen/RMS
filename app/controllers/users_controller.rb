class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		 respond_to do |format|
			if @user.save
				 format.html { redirect_to(users_path, :notice => 'Company users was successfully created.') }
				 format.xml  { render :xml => @roles, :status => :created, :location => @roles }			 
			else
				format.html { render :action => "new" }
         		format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end



end
