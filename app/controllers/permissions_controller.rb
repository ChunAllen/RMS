class PermissionsController < ApplicationController
  def new
  	@permission = Permission.new

  	respond_to do |format|
  	  format.html #new.html.erb
  	  format.xml { render :xml => @permission }	
    end
  end

  def create
    @permission = Permission.new(params[:permission])

    respond_to do |format|
      if @permission.save
        format.html { redirect_to(new_permission_path, :notice => 'Successfully added Permission to Role.') }
        format.xml  { render :xml => @permission, :status => :created, :location => @permission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @permission.errors, :status => :unprocessable_entity }
      end
    end
  end
end
