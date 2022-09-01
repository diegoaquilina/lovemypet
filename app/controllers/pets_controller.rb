class PetsController < ApplicationController
  before_action :load_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all.where(user: current_user)
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @vaccines = Vaccines.where(pet: @pet)
    # @appointments = Appointment.where(pet: @pet)
    # @medications = Medications.where(pet: @pet)
    # @baths = Baths.where(pet: @pet)
    # @foods = Foods.where(pet: @pet)
  end

  def edit;
  end

  def update
    @pet.update(pet_params)
    redirect_to profile_path
  end

  def destroy
    @pet.destroy
    redirect_to profile_path
  end

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :size, :age, :weight, :sex, :neutered, :microchipped, :feeding_schedule, :energy_level, :photo)
  end
end
