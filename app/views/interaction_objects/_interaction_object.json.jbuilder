json.extract! interaction_object, :id, :name, :created_at, :updated_at
json.url interaction_object_url(interaction_object, format: :json)