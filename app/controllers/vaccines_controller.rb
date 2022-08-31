class VaccinesController < ApplicationController
  def new
    @vaccines = Vaccine.new
  end

  def create
    @vaccine = Vaccine.new(vaccine_params)
    @vaccine.pet_id = @pet
    if @vaccine.save
      redirect_to pet_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def vaccine_params
      params.require(:vaccine).permit(:type, :app_date, :expiry_date)
  end
end
