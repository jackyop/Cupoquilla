class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  def signed_in_user
		store_location
		redirect_to signin_path, notice: "Please Sign in" unless signed_in?
	end
  def signed_in_admin
		store_location
		redirect_to root_path, notice: "You are not admin" unless admin?
  end
end
