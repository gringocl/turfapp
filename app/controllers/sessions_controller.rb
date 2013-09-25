class SessionsController < ApplicationController
  
  
  def new

  end

  def create
    user = User.where(:email => params[:signin][:email]).first
    if user && user.authenticate(params[:signin][:password])
      session[:user_id] = user.id
      flash[:notice] = "Signed in succesfully!"
      redirect_to params[:return_to] || root_url
    else
      flash[:error] = "Sorry."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Signed out succesfully."

    redirect_to root_url
  end

  private

  

    def forward
      redirect_to set_redirect_request
    end
end