class StudentsController < ApplicationController
	layout 'standard'

	def list
		@students = Student.all
		respond_with(@students)
	end
	   
	def show
		@student = Student.find(params[:id])
		respond_with(@student)
   	end
	   
	def new
		@student = Student.new
		@genders = Gender.all
		@payment_methods = PaymentMethod.all
		respond_with(@student)
	end
	   
	def create
	    @student = Student.create(student_params)
		respond_with(@student, :location => '/students/list')
	   
	end

	def student_params
	   	params.require(:students).permit(:name, :cpf, :cellphone, :birth_date, :gender_id, :payment_method_id)
	end

	def edit
		@student = Student.find(params[:id])
		@genders = Gender.all
		@payment_methods = PaymentMethod.all
		respond_with(@student)
	end
	   
	def update
		@student = Student.find(params[:id])
	
	    @student.update_attributes(student_param)
	    respond_with(@student, :location => '/students/list')
	end

	def student_param
	   	params.require(:student).permit(:name, :cpf, :cellphone, :birth_date, :gender_id, :payment_method_id)
	end
	   
	def delete
		@student = Student.find(params[:id])
		if @student.destroy
			flash[:success] = "Student was deleted."
	    else
	      	flash[:error] = "Student could not be deleted."
	    end
		redirect_to :action => 'list'
	end

	def show_genders
	      @gender = Gender.find(params[:id])
	end

	def show_payment_methods
	      @payment_method = PaymentMethod.find(params[:id])
	end
end
