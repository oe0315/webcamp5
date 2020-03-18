class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@post_images = @user.post_image.page(params[:page]).reverse_order
  end
end
