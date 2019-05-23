class Manage::UserProfilesController < ApplicationController
  def show
  end

  def edit
  end

  def update
    current_user.update(profile_params)
    redirect_to manage_profile_path, notice: 'Your profile has been updated'
  end

  def profile_params
    params.require(:user).permit(:name)
  end
end
