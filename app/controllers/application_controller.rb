class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def admin_only
    redirect_to root_path unless current_user.admin?
  end

  def not_authorizaed
    redirect_to rsvp_path, flash: { warning: "You are not authorized to view that page." }
  end

  private
  def not_authenticated
    redirect_to login_path
  end
end
