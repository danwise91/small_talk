class SessionsController < ApplicationController
  # skip_before_action :authorize
  def new
    @user = User.new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  #   user = User.find_by(email: params[:user][:email])
  # if @user && @user.authenticate(params[:user][:password])
  #   session[:user_id] = @user.id
  #   redirect_to '/', notice: "Hello, #{current_user.name}!"
  # else
  #   @user = User.new
  #   flash.now[:error] = "Bad Username or Password"
  #   binding.pry
  #   render :new
  # end
  # end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
      # redirect_to '/', notice: "You have been logged out!"
  end

private
  def session_params
    params.require(:session).permit(:name, :user_id, :email, :password, :password_confirmation)
  end
end
