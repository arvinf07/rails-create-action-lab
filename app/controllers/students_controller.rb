class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    stud = Student.new(first_name: params[:first_name], last_name: params[:last_name])
    stud.save
    redirect_to student_path(stud)
  end

end
