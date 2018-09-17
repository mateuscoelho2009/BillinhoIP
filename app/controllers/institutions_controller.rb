class InstitutionsController < ApplicationController
	layout 'standard'

	def begpag

	end

	def list
		@institutions = Institution.all
		respond_with(@institutions)
	end
	   
	def show
		@institution = Institution.find(params[:id])
		respond_with(@institution)
   	end
	   
	def new
		@institution = Institution.new
		@kinds = Kind.all
		respond_with(@institution)
	end
	   
	def create
	   @institution = Institution.create(institution_params)
	   respond_with(@institution, :location => '/institutions/list')
	end

	def institution_params
		params.require(:institutions).permit(:name, :cnpj, :kind_id)
	end

	def edit
		@institution = Institution.find(params[:id])
		@kinds = Kind.all
		respond_with(@institution)
	end
	   
	def update
		@institution = Institution.find(params[:id])
	    @institution.update_attributes(institution_param)
		respond_with(@institution, :location => '/institutions/list')
	end

	def institution_param
	   	params.require(:institution).permit(:name, :cnpj, :kind_id)
	end
	   
	def delete
		@institution = Institution.find(params[:id])
		if @institution.destroy
			flash[:success] = "Institution was deleted."
	    else
	      	flash[:error] = "Institution could not be deleted."
	    end
		redirect_to :action => 'list'
	end

	def show_kinds
	      @kind = Kind.find(params[:id])
	end

	  def show_institutions
	  	redirect_to :action => 'list'
	  end

	  def show_matriculations
	  	redirect_to :action => "list", :controller => "matriculations"
	  end

	  def show_students
	  	redirect_to :action => "list", :controller => "students"
	  end

	  def back_to_main
	  	redirect_to :action => 'begpag'
	  end
end
