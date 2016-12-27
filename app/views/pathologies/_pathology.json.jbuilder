json.extract! pathology, :id, :name, :created_at, :updated_at
json.url pathology_url(pathology, format: :json)