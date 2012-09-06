class CompaniesController < ApplicationController

	def index
	  if user_signed_in?
	  	@addcompany = Company.new
	  	@showcompany = Company.find(:all, :select => "id, name, address, address2, city, country, zip_code, landline, mobile, fax")
	  else	
	  	redirect_to new_user_session_path
	  end
	end
	

	def create
		@addcompany = Company.create(params[:company])
		if @addcompany.save
			redirect_to root_path	
		else
			redirect_to root_path
		end
	end

end
