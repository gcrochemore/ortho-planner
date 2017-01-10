json.extract! patient, :id, :last_name, :first_name, :is_male, :birth_date, :birth_place, :priority, :comments, :job, :created_at, :updated_at
json.url patient_url(patient, format: :json)