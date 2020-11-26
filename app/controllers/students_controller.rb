class StudentsController < ApplicationController
  
  
  
  private
  
    def finder
      @student = Student.find(params[:id])
    end 
  
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end 