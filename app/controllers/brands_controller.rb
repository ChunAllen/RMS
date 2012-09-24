class BrandsController < ApplicationController

	def index
    @clients = Client.find(:all, :conditions => { :user_id => current_user.id } )
    @showidClient = Client.find(:all, :conditions => { :user_id => current_user.id }).first
    @brand = Brand.new
    @brands = Brand.all
    
    @branch = Branch.new
    respond_to do |format|
      format.html 
      format.xml  { render :xml => @brands }
    end
 
  end

  def show
    @brand = Brand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @brand }
    end
  end

 

  def edit
    @brand = Brand.find(params[:id])
  end

  def create
    @brand = Brand.new(params[:brand])
    respond_to do |format|
      if @brand.save
        format.html { redirect_to(brands_path, :notice => 'Brand was successfully created.') }
        format.xml  { render :xml => @brand, :status => :created, :location => @brand }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @brand.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @brand = Brand.find(params[:id])

    respond_to do |format|
      if @brand.update_attributes(params[:brands])
        format.html { redirect_to(@brand, :notice => 'Brand was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @brand.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy

    respond_to do |format|
      format.html { redirect_to(brands_path, :notice => 'Brand has been deleted.') }
      format.xml  { head :ok }
    end
  end	


end
