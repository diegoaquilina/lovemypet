class VaccinesController < ApplicationController
  before_action :load_vaccine, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @vaccines = Vaccine.all.where(pet: current_user.pets)
  end

  def new
    @vaccine = Vaccine.new
  end

  def create
    _params = vaccine_params
    _params[:pet] = Pet.find(vaccine_params[:pet])
    @vaccine = Vaccine.new(_params)
    if @vaccine.save
      redirect_to vaccines_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    _params = vaccine_params
    _params[:pet] = Pet.find(vaccine_params[:pet])
    @vaccine.update(_params)
    redirect_to vaccines_path
  end

  def destroy
    @vaccine.destroy
    redirect_to vaccines_path
  end

  def end_date_vaccine(app_date)
    end_date = app_date + 365
  end

  helper_method :end_date_vaccine

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def load_vaccine
    @vaccine = Vaccine.find(params[:id])
  end

  def vaccine_params
    params.require(:vaccine).permit(:vaccine_type, :app_date, :expiry_date, :notification, :pet)
  end
end
