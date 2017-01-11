json.extract! waiting_list, :id, :patient_id, :health_place_id, :start_date, :end_date, :pathology_id, :comments, :created_at, :updated_at
json.url waiting_list_url(waiting_list, format: :json)