json.extract! contact, :id, :name, :email, :telephone, :position, :operator, :created_at, :updated_at
json.url contact_url(contact, format: :json)
