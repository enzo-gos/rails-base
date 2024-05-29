class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  include Pundit::Authorization
  protect_from_forgery
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  include Pagy::Backend

  private

  def user_not_authorized
    flash[:notice] = 'You are not authorized to perform this action.'
    # redirect_to dashboard_path
  end
end
