json.extract! patient, :id, :last_name, :first_name, :birth_date, :birth_place, :phone_number, :created_at, :updated_at
json.url patient_url(patient, format: :json)