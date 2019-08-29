class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new #creates an instance of the StudentsController and call its new method. Rails will be default render new.html.erb and will make the @student instance variable accessible to view. 
    @student = Student.new 
  end

  def create #uses post parameters from the form and URL will be /students
    @student = Student.new 
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save 
    redirect_to student_path(@student)
  end
end
