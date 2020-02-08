class ProfilesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @user = User.find(params[:user_id])
    @profile.save
    redirect_to
  end

  def show
    @profile = Profile.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def edit
    @profile = Profile.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)

    redirect_to
  end

  private

  def profile_params
    params.require(:profile).permit(
      :first_name,
      :last_name,
      :date_of_birth,
      :profile_url,
      :gender,
      :street_address,
      :state,
      :country_code,
      :postal_code,
      :phone_number
    )
  end
end
