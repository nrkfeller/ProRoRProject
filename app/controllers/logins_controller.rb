class LoginsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'You are logged In'
      redirect_to courses_path
      ##
    else
      flash.now[:danger] = 'Email address and password does not match'
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have logged Out'
    redirect_to root_path
  end
  
end