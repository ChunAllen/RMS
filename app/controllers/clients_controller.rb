class ClientsController < ApplicationController


	def index
		@client = Client.new 
	 	@clients = Client.find(:all, :conditions => { :user_id => current_user.id } )
	end
    

  

	def create
		@client = Client.new(params[:client])
		 respond_to do |format|
			if @client.save
				 format.html { redirect_to(clients_path, :notice => 'Company was successfully created.') }
				 format.xml  { render :xml => @client, :status => :created, :location => @client }
			else
				 format.html { render :action => "new" }
       			 format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
			end
		end
	end

	def edit
		@client = Client.find(params[:id])	
	end

	def update
	  @client = Client.find(params[:id])
      respond_to do |format|
	      if @client.update_attributes(params[:client])
	        format.html { redirect_to(clients_path, :notice => 'Company was successfully updated.') }
	        format.xml  { head :ok }
	      else
	        format.html { render :action => "edit" }
	        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
	      end
   	  end
	end


end
