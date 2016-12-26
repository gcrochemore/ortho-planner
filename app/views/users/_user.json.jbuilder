json.extract! user, :id, :email, :password, :sign_in_count, :created_at, :updated_at
json.url user_url(user, format: :json)