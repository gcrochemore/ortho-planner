json.extract! practitioner, :id, :first_name, :last_name, :birth_date, :birth_place, :profession_id, :created_at, :updated_at
json.url practitioner_url(practitioner, format: :json)