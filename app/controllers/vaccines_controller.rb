class VaccinesController < ApplicationController
  before_action :load_vaccine, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @vaccines = Vaccine.all.where(user: current_user)
  end

  def new
    @vaccine = Vaccine.new
  end

  def create
    @vaccine = Vaccine.new(vaccine_params)
    if @vaccine.save
      redirect_to pet_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    @vaccine.update(vaccine_params)
    redirect_to vaccines_path
  end

  def destroy
    @bath.destroy
    redirect_to vaccines_path
  end

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def load_vaccine
    @vaccine = Vaccine.find(params[:id])
  end

  def vaccine_params
      params.require(:vaccine).permit(:type, :app_date, :expiry_date)
  end
end
