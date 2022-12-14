class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def profile
    @user = current_user
    @pets = Pet.where(user: @user)
  end
end
