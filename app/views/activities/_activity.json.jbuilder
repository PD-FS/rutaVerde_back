json.extract! activity, :id, :name, :initial_time, :final_time, :description, :requirements, :user_id, :civicoin_give, :cost, :value, :created_at, :updated_at
json.url activity_url(activity, format: :json)
