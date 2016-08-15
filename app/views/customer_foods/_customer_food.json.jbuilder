json.extract! customer_food, :id, :customer_id, :food_id, :created_at, :updated_at
json.url customer_food_url(customer_food, format: :json)