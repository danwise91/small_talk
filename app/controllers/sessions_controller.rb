class SessionsController < ApplicationController
  # skip_before_action :authorize
  def new
    @user = User.new
  end

  def create
    if params[:provider]
      # binding.pry
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to root_path
    else
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        respond_to do |format|
          format.js { render inline: "location.reload();" }
          format.html { redirect_to root_url  }
        end
      else
        @user = User.new
        respond_to do |format|
          format.js { }
          format.html { redirect_to root_url  }
        end
      end
    end
  end


  def destroy
    session[:user_id] = nil
    @user = User.new
    redirect_to root_path
      # redirect_to '/', notice: "You have been logged out!"
  end

  def terms
      @user = User.new
    #adding terms and conditions to sign up
  end

private
  def session_params
    params.require(:session).permit(:name, :user_id, :email, :password, :password_confirmation)
  end
end
