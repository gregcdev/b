class AdminController < ApplicationController
	before_filter :check_admin

  def index
  	@users = User.all
  end

  private

  def check_admin
  	if !user_signed_in?
  		redirect_to new_user_session_path, alert: "Sign into an admin account."
  	elsif !current_user.try(:admin?)
  		redirect_to root_path, alert: "You are not an admin, you don't belong there!"
  	end
  end
end
