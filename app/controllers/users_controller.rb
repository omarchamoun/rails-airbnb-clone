class UsersController < ApplicationController

  before_action :set_user

  def show

  end

  def edit

  end

  def update
    if User.update(user_params)
      redirect_to root_path
      flash[:notice] = "You have succesfully updated your profile"
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to flats_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :photo, :photo_cache)
  end

end


