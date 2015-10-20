class UsersController < ApplicationController
  def index
    check_login!

    @users = User.all
  end

  def show
    check_login!

    @user = User.find(params[:id])
  end
  
  def create
    check_login!
    #...
  end

  def destroy
    check_login!
    #...
  end

  private

  def check_login!
    return false if !current_user
  end
end
