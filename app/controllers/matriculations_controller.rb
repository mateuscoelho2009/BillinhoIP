class MatriculationsController < ApplicationController
	def list
		@matriculations = Matriculation.all
	end
	   
	def show
		@matriculation = Matriculation.find(params[:id])
   	end
	   
	def new
		@matriculation = Matriculation.new
		@students = Student.all
		@institutions = Institution.all
	end
	   
	def create
	   @matriculation = Matriculation.new(matriculation_params)
		
	   if @matriculation.save
	      redirect_to :action => 'list'
	   else
	      @students = Student.all
		  @institutions = Institution.all
	      render :action => 'new'
	   end
	   
	end

	def matriculation_params
	   	params.require(:matriculations).permit(:student_id, :institution_id, :due_date, :num_invoices, :total_value)
	end

	def edit
		@matriculation = Matriculation.find(params[:id])
		@students = Student.all
		@institutions = Institution.all
	end
	   
	def update
		@matriculation = Matriculation.find(params[:id])
	
	    if @matriculation.update_attributes(matriculation_param)
	      	redirect_to :action => 'show', :id => @matriculation
	   	else
			@students = Student.all
			@institutions = Institution.all
	      	render :action => 'edit'
	   	end
	end

	def matriculation_param
	   	params.require(:matriculation).permit(:student_id, :institution_id, :due_date, :num_invoices, :total_value)
	end
	   
	def delete
		Matriculation.find(params[:id]).destroy
   		redirect_to :action => 'list'
	end

end
