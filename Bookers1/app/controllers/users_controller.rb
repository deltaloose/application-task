class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end
  def index
  	@users = User.all
  end
  def edit
  	@user = User.find(params[:id])
  end
  def update
  	user = User.find(params[:id])
  	if @user.update(user_path)
        flash[:success] = 'You have updated user successfully.'
  		redirect_to user_path(user)
  	else
  		render :edit
  	end
  end
end
