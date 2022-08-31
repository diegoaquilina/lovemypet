class BathsController < ApplicationController
  before_action :load_bath, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @baths = Bath.all
  end

  def new
    @bath = Bath.new
  end

  def create
    @bath = Bath.new(bath_params)
    if @bath.save
      redirect_to baths_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    @bath.update(bath_params)
    redirect_to baths_path
  end

  def destroy
    @bath.destroy
    redirect_to baths_path
  end

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def load_bath
    @bath = Bath.find(params[:id])
  end

  def bath_params
    params.require(:food).permit(:category, :address, :date, :petshop)
  end

end
