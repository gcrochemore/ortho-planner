json.extract! patients_pathology, :id, :patient_id, :pathology_id, :created_at, :updated_at
json.url patients_pathology_url(patients_pathology, format: :json)