class MedicationsController < ApplicationController
  before_action :load_medication, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @medications = Medication.all.where(user: current_user)
  end
  
  def new
    @medication = Medication.new
  end

  def create
    @medication = Medication.new(medication_params)
    if @medication.save
      redirect_to medications_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    @medication.update(bath_params)
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
    @medication = Bath.find(params[:id])
  end

  def medication_params
      params.require(:medication).permit(:name, :dose, :dose_unit, :instructions, :reminder, :frequency, :days_qty)
  end
end
