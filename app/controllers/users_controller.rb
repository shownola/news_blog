class UsersController < ApplicationController
  before_action :authorize_admin, only: [:create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully created #{@user.email} as a new user"
      redirect_to :back
    else
      flash.now[:alert] = "There was an error, please try again"
      render 'new'
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def authorize_admin
    return unless !current_user.admin?
    redirect_to root_path, alert: 'Admins only'
  end
end
