json.extract! health_place, :id, :name, :HealthPlaceType_id, :created_at, :updated_at
json.url health_place_url(health_place, format: :json)