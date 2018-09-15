class InstitutionsController < ApplicationController
	def list
		@institutions = Institution.all
	end
	   
	def show
		@institution = Institution.find(params[:id])
   	end
	   
	def new
		@institution = Institution.new
		@kinds = Kind.all
	end
	   
	def create
	   @institution = Institution.new(institution_params)
		
	   if @institution.save
	      redirect_to :action => 'list'
	   else
	      @kinds = Kind.all
	      render :action => 'new'
	   end
	   
	end

	def institution_params
	   	params.require(:institutions).permit(:name, :cnpj, :kind_id)
	end

	def edit
		@institution = Institution.find(params[:id])
		@kinds = Kind.all
	end
	   
	def update
		@institution = Institution.find(params[:id])
	
	    if @institution.update_attributes(institution_param)
	      	redirect_to :action => 'show', :id => @institution
	   	else
		@kinds = Kind.all
	      	render :action => 'edit'
	   	end
	end

	def institution_param
	   	params.require(:institution).permit(:name, :cnpj, :kind_id)
	end
	   
	def delete
		Institution.find(params[:id]).destroy
   		redirect_to :action => 'list'
	end

	def show_kinds
	      @kind = Kind.find(params[:id])
	end
end
