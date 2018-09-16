class InstitutionsController < ApplicationController
	def begpag

	end

	def list
		@institutions = Institution.all
		#respond_with(@institutions)
	end
	   
	def show
		@institution = Institution.find(params[:id])
		#respond_with(@institution)
   	end
	   
	def new
		@institution = Institution.new
		@kinds = Kind.all
		#respond_with(@institution)
	end
	   
	def create
	   @institution = Institution.new(institution_params)
		
	   if @institution.save
	      #respond_with(@institution, :location => @institution)
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
		#respond_with(@institution)
	end
	   
	def update
		@institution = Institution.find(params[:id])
	
	    if @institution.update_attributes(institution_param)
		#respond_with(@institution, :location => @institution)
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
		@institution = Institution.find(params[:id])
		@institution.destroy
		#respond_with(nil, :location => institutions_path)
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
