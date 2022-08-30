class FoodController < ApplicationController
  before_action :load_food, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new 
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end 
  end

  def show; end

  def edit; end

  def update
    @food.update(food_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @food.destroy
    redirect_to pet_path(@pet)
  end

  private

  def load_pet
    @pet = Pet.find(params[:id])
  end

  def load_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:category, :brand, :bag_qty_kg, :daily_qty_kg, :start_date)
  end

end
