class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = student[:first_name]
    @student.last_name = student[:last_name]
    @student.save
    redirect_to(students_path)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
  
end
