json.extract! patient_availability, :id, :patient_id, :day, :period, :created_at, :updated_at
json.url patient_availability_url(patient_availability, format: :json)