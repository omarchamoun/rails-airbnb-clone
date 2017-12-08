class PagesController < ApplicationController
  def home
  end

  def edit_profile
    @user = current_user
  end
end
