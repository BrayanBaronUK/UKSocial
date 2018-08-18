json.extract! user, :id, :name, :last_name, :born_date, :created_at, :updated_at
json.url user_url(user, format: :json)
