class PrereqsController < ApplicationController
  
  def show
    @prereq = Prereq.find(params[:id])
    @course = @prereq.courses.paginate(page: params[:page], per_page: 4)
  end
  
  def new
    @prereq = Prereq.new
  end
  
  def create
    @prereq = Prereq.new(prereq_params)
    if @prereq.save
      flash[:success] = 'Successfully assigned Prereq'
      redirect_to courses_path
    else
      render 'new'
    end
  end
  
  private
    def prereq_params
      params.require(:prereq).permit(:name)
    end
  
end