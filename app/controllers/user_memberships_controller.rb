class UserMembershipsController < ApplicationController
  def index
    @user_memberships = UserMembership.all
  end
end
