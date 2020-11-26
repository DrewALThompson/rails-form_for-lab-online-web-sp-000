class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end 
  
  def show
    student_finder
  end 
  
  def new
  end 
  
  def create
    @student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end 
  
  def 
  
  
  private
  
    def student_finder
      @student = Student.find(params[:id])
    end 
  
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end 