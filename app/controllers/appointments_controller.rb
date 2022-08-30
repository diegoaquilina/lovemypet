class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @pet = Pet.find(params[:pet_id])
    @appointment.user = current_user
    @appointment.pet = @pet
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def appointment_params
    params.require(:appointment).permit(:title, :date, :address, :phone, :latitude, :longitude)
  end

end
