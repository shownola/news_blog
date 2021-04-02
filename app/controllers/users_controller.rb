class UsersController < Devise::RegistrationsController

  before_action :check_permissions, only: [:new, :create, :cancel]
  skip_before_filter :require_no_authentication


  def index
    @users = User.all
    respond_to do |format|
      format.html
    end
  end

  def create
    build_resource(sign_up_params)
    if resource.save
      redirect_to admin_users_path
    else
      clean_up_passwords resource
      respond_with resource
    end
  end 

  private

  def check_permissions
    authorize! :create, resource
  end

end
