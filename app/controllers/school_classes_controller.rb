class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end
  
  def show 
    finder
  end 
  
  def new 
  end 
  
  def create
    @school_class = SchoolClass.new(title: params[:title], room_number: params[:room_number])
    @school_class.save
    redirect_to post_path(@school_class)
  end 
  
  def edit
    finder
  end
  
  def update
    finder
    @school_class.update(params.require(:))
  end
  
  private
  
    def finder
      @school_class = SchoolClass.find(params[:id])
    end
      
end 