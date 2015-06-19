class CoursesController < ApplicationController
  
  def index
    @courses = Course.all
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end
  def create
    @course = Course.new(course_params)
    @course.user = User.find(2)
    
    if @course.save
      flash[:success] = "Course Created!"
      redirect_to courses_path
    else
      render :new
    end
  end
  
  def edit
    @course = Course.find(params[:id])
  end
  
  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:success] = 'Updated Successfully!'
      redirect_to course_path(@course)
    else
      render :edit
    end
  end
  
  private
  
    def course_params
      params.require(:course).permit(:name, :rating, :description, :picture)
    end
  
end