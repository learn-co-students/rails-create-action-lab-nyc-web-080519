class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(
      {
        first_name: params[:first_name],
        last_name: params[:last_name]
      }
    )
    redirect_to student_path(@student)
  # student = Student.create(student_params)
  #   redirect_to student_path(student)
  end

  # def student_params
  #   params.require(:student).permit(:first_name, :last_name)
  # end

end
