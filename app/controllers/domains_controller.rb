class DomainsController < ApplicationController
  
  def show
    @domain = Domain.find(params[:id])
    @course = @domain.courses.paginate(page: params[:page], per_page: 4)
  end
  
  def new
    @domain = Domain.new
  end
  
  def create
    @domain = Domain.new(domain_params)
    if @domain.save
      flash[:success] = 'Domain was Created'
      redirect_to courses_path
    else
      render 'new'
    end
  end
  
  private
    def domain_params
      params.require(:domain).permit(:name)
    end
  
end