class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @pet = Pet.find(params[:id])
    # @vaccines = Vaccines.where(pet: @pet)
    # @appointments = Appointment.where(pet: @pet)
    # @medications = Medications.where(pet: @pet)
    # @baths = Baths.where(pet: @pet)
    # @foods = Foods.where(pet: @pet)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(current_user)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :breed, :size, :age, :weight, :sex, :neutered, :microchipped, :feeding_schedule, :energy_level)
  end
end
