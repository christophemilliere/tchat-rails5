class SessionsController < ApplicationController

  def new
  end

  def create
    session[:username] = params[:session][:username]
    redirect_to root_path
  end
end
