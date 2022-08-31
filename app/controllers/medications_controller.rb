class MedicationsController < ApplicationController



  def new
    @medications = Medication.new
  end

  def create
    @medication = Medication.new(medication_params)
    @medication.pet_id = @pet
    if @medication.save
      redirect_to pet_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
  end

  private

  def medication_params
      params.require(:medication).permit(:name, :dose, :dose_unit, :instructions, :reminder, :frequency, :days_qty)
  end
end
