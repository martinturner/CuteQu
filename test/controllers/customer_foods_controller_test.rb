require 'test_helper'

class CustomerFoodsControllerTest < ActionController::TestCase
  setup do
    @customer_food = customer_foods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_food" do
    assert_difference('CustomerFood.count') do
      post :create, customer_food: { customer_id: @customer_food.customer_id, food_id: @customer_food.food_id }
    end

    assert_redirected_to customer_food_path(assigns(:customer_food))
  end

  test "should show customer_food" do
    get :show, id: @customer_food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_food
    assert_response :success
  end

  test "should update customer_food" do
    patch :update, id: @customer_food, customer_food: { customer_id: @customer_food.customer_id, food_id: @customer_food.food_id }
    assert_redirected_to customer_food_path(assigns(:customer_food))
  end

  test "should destroy customer_food" do
    assert_difference('CustomerFood.count', -1) do
      delete :destroy, id: @customer_food
    end

    assert_redirected_to customer_foods_path
  end
end
