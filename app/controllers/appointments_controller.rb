class AppointmentsController < ApplicationController
  before_action :load_appointment, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path(@appointment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    @appointment.update(bath_params)
    redirect_to appointments_path
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def load_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:title, :date, :address, :phone, :latitude, :longitude)
  end
  
end
