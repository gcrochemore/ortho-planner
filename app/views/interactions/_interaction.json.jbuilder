json.extract! interaction, :id, :patient_id, :interaction_type_id, :interaction_date, :comments, :created_at, :updated_at
json.url interaction_url(interaction, format: :json)