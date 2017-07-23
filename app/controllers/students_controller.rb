class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def new
		
	end

	def create
		@student = Student.create(params[:student])
		redirect_to @student
	end

	def show
		@student = Student.find(params[:id])
	end

	private

	def student_params
		params.require(:student).permit(:first_name, :last_name)
	end

end