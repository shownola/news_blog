class RegistrationsController < Devise::RegistrationsController
  before_action :authorize_admin, only: [:new, :create]
  before_action :authenticate_user!, :redirect_unless_admin, only: [:new, :create]
  skip_before_action :require_no_authentication


  private

  def authorize_admin
    return unless !curent_user.admin?
    redirect_to root_path, alert: 'Only admins!'
  end


  def redirect_unless_admin
    unless current_user.try(:admin?)
      flash[:error] = 'Only admins allowed to perform this action'
      redirect_to root_path
    end
  end

  def sign_up(resource_name, resource)
    true
  end

end
