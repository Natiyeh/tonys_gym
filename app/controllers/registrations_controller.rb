class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # @user = User.find(params[:user_id])
    # @profile = Profile.find(params[:id])
    edit_user_profile_path(resource.id, resource.profile.id)
    # `users/#{@user.id}/profiles/#{@user.profile.id}/edit/(resource)` # Or :prefix_to_your_route
  end
end
