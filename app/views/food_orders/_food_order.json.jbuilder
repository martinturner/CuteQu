json.extract! food_order, :id, :food_id, :created_at, :updated_at
json.url food_order_url(food_order, format: :json)