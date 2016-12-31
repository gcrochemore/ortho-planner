json.extract! session, :id, :begin_date, :end_date, :therapy_id, :act_id, :practitioner_id, :health_place_id, :created_at, :updated_at
json.url session_url(session, format: :json)