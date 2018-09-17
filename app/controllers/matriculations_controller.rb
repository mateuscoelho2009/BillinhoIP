class MatriculationsController < ApplicationController
	layout 'standard'

	def list
		@matriculations = Matriculation.all
		respond_with(@matriculations)
	end
	   
	def show
		@matriculation = Matriculation.find(params[:id])
		respond_with(@matriculation)
   	end
	   
	def new
		@matriculation = Matriculation.new
		@students = Student.all
		@institutions = Institution.all
		respond_with(@matriculation)
	end
	   
	def create
	   @matriculation = Matriculation.create(matriculation_params)
	   respond_with(@matriculation, :location => '/matriculations/list')
	   
	end

	def matriculation_params
	   	params.require(:matriculations).permit(:student_id, :institution_id, :due_date, :num_invoices, :total_value)
	end

	def edit
		@matriculation = Matriculation.find(params[:id])
		@students = Student.all
		@institutions = Institution.all
		respond_with(@matriculation)
	end
	   
	def update
		@matriculation = Matriculation.find(params[:id])
	
	    @matriculation.update_attributes(matriculation_param)
		respond_with(@matriculation, :location => '/matriculations/list')
	end

	def matriculation_param
	   	params.require(:matriculation).permit(:student_id, :institution_id, :due_date, :num_invoices, :total_value)
	end
	   
	def delete
		@matriculation = Matriculation.find(params[:id])
   		if @matriculation.destroy
			flash[:success] = "Matriculation was deleted."
	    else
	      	flash[:error] = "Matriculation could not be deleted."
	    end
		redirect_to :action => 'list'
	end

end
