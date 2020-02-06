class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all if current_user.role == admin
  end
end