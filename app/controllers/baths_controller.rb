class BathsController < ApplicationController
  before_action :load_bath, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @baths = Bath.all.where(pet: current_user.pets)
  end

  def new
    @bath = Bath.new
  end

  def create
    _params = bath_params
    _params[:pet] = Pet.find(bath_params[:pet])
    @bath = Bath.new(_params)
    if @bath.save
      redirect_to baths_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    _params = bath_params
    _params[:pet] = Pet.find(bath_params[:pet])
    @bath.update(_params)
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
    params.require(:bath).permit(:category, :address, :date, :pet)
  end
end
