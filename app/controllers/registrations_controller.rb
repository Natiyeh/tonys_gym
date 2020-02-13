# frozen_string_literal: true

# Registrations allow path to edit profile
class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    edit_user_profile_path(resource.id, resource.profile.id)
  end
end
