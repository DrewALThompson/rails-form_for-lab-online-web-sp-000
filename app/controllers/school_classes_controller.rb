class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end
  
  def show 
    @school_class = SchoolClass.find(params[:id])
  end 
  
  def new 
  end 
  
  def create
    @school_class = SchoolClass
  end 
end 