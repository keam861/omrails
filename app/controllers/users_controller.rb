class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@mi_propiedads = @user.mi_propiedads
  end
end

# @user = User.find_by(username: params[:username])