class FoodOrdersController < ApplicationController
  before_action :set_food_order, only: [:show, :edit, :update, :destroy]
  before_action :set_customer
  # GET /food_orders
  # GET /food_orders.json
  def index
    @food = current_order.foods.new
  end

  # GET /food_orders/1
  # GET /food_orders/1.json
  def show
    @food_orders = current_order.food_orders
  end

  # GET /food_orders/new
  def new
    @customer = Customer.find(params[:customer_id])
    @food_order = FoodOrder.new
  end

  # GET /food_orders/1/edit
  def edit
  end

  # POST /food_orders
  # POST /food_orders.json
  def create
    @food_order = FoodOrder.new(food_order_params)
    @food_order.customer_id = @customer.id
    respond_to do |format|
      if @food_order.save
        format.html { redirect_to customer_food_order_path(id: @food_order.id, customer_id: @customer.id), notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @food_order }
      else
        format.html { render :new }
        format.json { render json: @food_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_orders/1
  # PATCH/PUT /food_orders/1.json
  def update
    respond_to do |format|
      if @food_order.update(food_order_params)
        format.html { redirect_to @food_order, notice: 'Food order was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_order }
      else
        format.html { render :edit }
        format.json { render json: @food_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_orders/1
  # DELETE /food_orders/1.json
  def destroy
    @food_order.destroy
    respond_to do |format|
      format.html { redirect_to food_orders_url, notice: 'Food order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_order
      @food_order = FoodOrder.find(params[:id])
    end

    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_order_params
      params.require(:food_order).permit(:food_id)
    end
end
