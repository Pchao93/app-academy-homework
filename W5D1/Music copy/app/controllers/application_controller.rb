class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def log_in!(user)
    session[:session_token] = user.session_token
  end

  def log_out!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_user
  end

  def must_be_logged_in
    if !logged_in?
      redirect_to new_session_url
    end
  end

  def must_not_be_logged_in
    if logged_in?
      redirect_to bands_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end