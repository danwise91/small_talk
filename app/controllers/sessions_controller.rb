class SessionsController < ApplicationController
  # skip_before_action :authorize
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to '/', notice: "Hello, #{current_user.name}!"
  else
    @user = User.new
    flash.now[:error] = "Bad Username or Password"
    render :new
  end
  end

  def destroy
      session[:user_id] = nil
      redirect_to '/', notice: "You have been logged out!"
  end

private
  def session_params
    params.require(:session).permit(:name, :email, :password, :password_confirmation)
  end
end
