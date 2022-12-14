class FoodsController < ApplicationController
  before_action :load_food, only: [:show, :edit, :update, :destroy]
  before_action :load_pet, only: [:new, :create, :edit, :update]

  def index
    @foods = Food.all.where(pet: current_user.pets).order("created_at DESC")
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

  # def end_date_food(start_date, bag_qty_kg, daily_qty_kg)
  #   qty_g = daily_qty_kg / 1000
  #   days_left = bag_qty_kg.to_f / qty_g
  #   end_date = start_date + days_left
  # end

  # helper_method :end_date_food

  private

  def load_pet
    @pet = Pet.where(user: current_user)
  end

  def load_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:category, :brand, :bag_qty_kg, :daily_qty_kg, :start_date, :notification, :pet)
  end
end


