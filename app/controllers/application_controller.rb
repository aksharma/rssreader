class ApplicationController < ActionController::Base
  before_filter :get_user_id
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def get_user_id
    @user_id ||= session[:user_id] ||= User.create.id
  end
end
