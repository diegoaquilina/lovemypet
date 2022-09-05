class MedicationsController < ApplicationController
  before_action :load_medication, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @medications = Medication.all.where(pet: current_user.pets)
  end

  def new
    @medication = Medication.new
  end

  def create
    _params = medication_params
    _params[:pet] = Pet.find(medication_params[:pet])
    @medication = Medication.new(_params)
    if @medication.save
      redirect_to medications_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    _params = medication_params
    _params[:pet] = Pet.find(medication_params[:pet])
    @medication.update(_params)
    redirect_to medications_path
  end

  def destroy
    @medication.destroy
    redirect_to medications_path
  end

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def load_medication
    @medication = Medication.find(params[:id])
  end

  def medication_params
      params.require(:medication).permit(:name, :dose, :dose_unit, :instructions, :reminder, :frequency, :start_date, :end_date, :pet)
  end
end
