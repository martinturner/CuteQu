class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:food_order_id].nil?
      FoodOrder.find(session[:food_order_id])
    else
      FoodOrder.new
    end
  end
end
