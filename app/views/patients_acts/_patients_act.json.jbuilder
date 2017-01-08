json.extract! patients_act, :id, :patient_id, :act_id, :created_at, :updated_at
json.url patients_act_url(patients_act, format: :json)