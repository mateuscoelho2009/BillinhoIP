class StudentsController < ApplicationController
	layout 'standard'
	
	def list
		@students = Student.all
	end
	   
	def show
		@student = Student.find(params[:id])
   	end
	   
	def new
		@student = Student.new
		@genders = Gender.all
		@payment_methods = PaymentMethod.all
	end
	   
	def create
	   @student = Student.new(student_params)
		
	   if @student.save
	      redirect_to :action => 'list'
	   else
	      @genders = Gender.all
		  @payment_methods = PaymentMethod.all
	      render :action => 'new'
	   end
	   
	end

	def student_params
	   	params.require(:students).permit(:name, :cpf, :cellphone, :birth_date, :gender_id, :payment_method_id)
	end

	def edit
		@student = Student.find(params[:id])
		@genders = Gender.all
		@payment_methods = PaymentMethod.all
	end
	   
	def update
		@student = Student.find(params[:id])
	
	    if @student.update_attributes(student_param)
	      	redirect_to :action => 'show', :id => @student
	   	else
			@genders = Gender.all
			@payment_methods = PaymentMethod.all
	      	render :action => 'edit'
	   	end
	end

	def student_param
	   	params.require(:student).permit(:name, :cpf, :cellphone, :birth_date, :gender_id, :payment_method_id)
	end
	   
	def delete
		Student.find(params[:id]).destroy
   		redirect_to :action => 'list'
	end

	def show_genders
	      @gender = Gender.find(params[:id])
	end

	def show_payment_methods
	      @payment_method = PaymentMethod.find(params[:id])
	end
end
