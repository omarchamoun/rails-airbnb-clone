class UsersController < ApplicationController

  before_action :set_user

  def show

  end

  def edit

  end

  def update
    @user = User.update(user_params)
    if @user.save
      redirect_to user_path(@user)
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
    params.require(:user).permit(:first_name, :last_name, :gender)
  end

end


