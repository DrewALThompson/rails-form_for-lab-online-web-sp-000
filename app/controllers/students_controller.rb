class StudentsController < ApplicationController
  
  private
  
  def finder
    @student = Student.find(params[:id])
  end 
  
  def student_params
    
  end
end 