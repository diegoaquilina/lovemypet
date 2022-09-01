class FoodsController < ApplicationController
  before_action :load_food, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @foods = Food.all.where(pet: current_user.pets)
  end

  def new
    @food = Food.new
  end

  def create
    _params = food_params
    _params[:pet] = Pet.find(food_params[:pet])
    @food = Food.new(_params)
    if @food.save
      redirect_to foods_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    _params = food_params
    _params[:pet] = Pet.find(food_params[:pet])
    @food.update(_params)
    redirect_to foods_path
  end

  def destroy
    @food.destroy
    redirect_to foods_path
  end

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def load_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:category, :brand, :bag_qty_kg, :daily_qty_kg, :start_date, :pet)
  end
end
