class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order

  before_action :set_customer

  def current_order
    if !session[:food_order_id].nil?
      FoodOrder.find(session[:food_order_id])
    else
      FoodOrder.new
    end
  end

  def set_customer
    @customer = Customer.find(params[:customer_id])
  end
end
