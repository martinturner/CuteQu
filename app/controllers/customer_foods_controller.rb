class CustomerFoodsController < ApplicationController
  before_action :set_customer_food, only: [:show, :edit, :update, :destroy]
  before_action :set_food, except: [:new]
  # GET /customer_foods
  # GET /customer_foods.json
  def index
    @customer_foods = CustomerFood.all
    @foods = Food.all
  end

  # GET /customer_foods/1
  # GET /customer_foods/1.json
  def show
  end

  # GET /customer_foods/new
  def new
    @food_starter = Food.where(category: 'Starter')
    @food_main_course = Food.where(category: 'Main Course')
    @food_dessert = Food.where(category: 'Dessert')
  end

  # GET /customer_foods/1/edit
  def edit
  end

  # POST /customer_foods
  # POST /customer_foods.json
  def create
    @customer_food = CustomerFood.new(customer_food_params)

    respond_to do |format|
      if @customer_food.save
        format.html { redirect_to @customer_food, notice: 'Customer food was successfully created.' }
        format.json { render :show, status: :created, location: @customer_food }
      else
        format.html { render :new }
        format.json { render json: @customer_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_foods/1
  # PATCH/PUT /customer_foods/1.json
  def update
    respond_to do |format|
      if @customer_food.update(customer_food_params)
        format.html { redirect_to @customer_food, notice: 'Customer food was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_food }
      else
        format.html { render :edit }
        format.json { render json: @customer_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_foods/1
  # DELETE /customer_foods/1.json
  def destroy
    @customer_food.destroy
    respond_to do |format|
      format.html { redirect_to customer_foods_url, notice: 'Customer food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_food
      @customer_food = CustomerFood.find(params[:id])
    end

    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_food_params
      params.require(:customer_food).permit(:customer_id, :food_id)
    end
end
