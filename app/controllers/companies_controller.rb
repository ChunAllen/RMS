class CompaniesController < ApplicationController

	def index
	  if user_signed_in?
	  	
	  	@showcompany = Company.find(:all, :select => "id, name, address, address2, city, country, zip_code, landline, mobile, fax", :conditions => { :user_id => current_user.id }  )
	  	
	  else	
	  	redirect_to new_user_session_path
	
	  end
	end
    

  def new
  	@company = Company.new
  end

	def create
		@company = Company.new(params[:company])
		 respond_to do |format|
			if @company.save
				 format.html { redirect_to(root_path, :notice => 'Company was successfully created.') }
				 format.xml  { render :xml => @company, :status => :created, :location => @company }
			else
				 format.html { render :action => "new" }
         format.xml  { render :xml => @company.errors, :status => :unprocessable_entity }
			end
		end
	end

	def edit
		@company = Company.find(params[:id])	
	end

	def update
	  @company = Company.find(params[:id])
      respond_to do |format|
	      if @company.update_attributes(params[:company])
	        format.html { redirect_to(companies_path, :notice => 'Company was successfully updated.') }
	        format.xml  { head :ok }
	      else
	        format.html { render :action => "edit" }
	        format.xml  { render :xml => @company.errors, :status => :unprocessable_entity }
	      end
   	  end
	end

	def companyadmins
		#@viewadmins =  
	end



end
