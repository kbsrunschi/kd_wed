class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
    if current_user
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def create
    if @user = login(params[:username], params[:password].downcase, params[:remember_me])
      redirect_back_or_to(root_path)
    else
      flash.now[:danger] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(login_path)
  end
end
