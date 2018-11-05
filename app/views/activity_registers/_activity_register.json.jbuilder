json.extract! activity_register, :id, :activity_id, :user_id, :picture1, :picture2, :picture3, :comments, :value, :created_at, :updated_at
json.url activity_register_url(activity_register, format: :json)
