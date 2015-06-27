class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :show, :like]
  before_action :require_user, except: [:show, :index, :like]#so users that are not logged in can still browse and stuff
  before_action :require_user_like, only: [:like]
  before_action :require_same_user, only: [:edit, :update]
  
  def index
    @courses = Course.paginate(page: params[:page], per_page: 6)
  end
  
  def show
  end
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(course_params)
    @course.user = current_user
    
    if @course.save
      flash[:success] = "Course Created!"
      redirect_to courses_path
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @course.update(course_params)
      flash[:success] = 'Updated Successfully!'
      redirect_to course_path(@course)
    else
      render :edit
    end
  end
  
  def like
    Like.create(like: params[:like], user: current_user, course: @course)
    flash[:success] = 'You have feedbacked this course!'
    redirect_to :back
  end
  
  private
  
    def course_params
      params.require(:course).permit(:name, :rating, :description, :picture, domain_ids: [], prereq_ids: [])
    end
    
    def set_course
      @course = Course.find(params[:id])
    end
    
    def require_same_user
      if current_user != @course.user
        flash[:danger] = 'You can only edit your own courses'
        redirect_to course_path
      end
    end
    
    def require_user_like
      if !logged_in?
        flash[:danger] = 'You must be logged in'
        redirect_to :back
      end
    end
  
end