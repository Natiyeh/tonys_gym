# frozen_string_literal: true

# Profile Controller
class ProfilesController < ApplicationController
  before_action :set_user, only: %i[new create show edit]
  before_action :set_profile, only: %i[show edit update]
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to
  end

  def show; end

  def edit; end

  def update
    @profile.update(profile_params)

    redirect_to
  end

  private

  def profile_params
    params.require(:profile).permit(
      :first_name, :last_name,
      :date_of_birth, :profile_url,
      :gender, :street_address,
      :state, :country_code,
      :postal_code, :phone_number,
      :city
    )
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
