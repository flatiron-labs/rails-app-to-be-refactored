class ApplicationController < ActionController::Base
  private

  def validate_user_participation!
    unless current_user.active?
      redirect_to root_path,
                  alert: 'Log in again this week to enable this feature!'
    end
  end
end
