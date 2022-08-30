class ProfileController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @pets = Pet.where(user: @user)
  end
end
