class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(user_params)

    if @user
      log_in!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["invalid username or password"]
      render :new
    end
  end

  def destroy
    log_out!
    redirect_to new_session_url
  end

end
