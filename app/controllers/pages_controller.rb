class PagesController < ApplicationController
  def home
    redirect_to courses_path if logged_in?
  end
end