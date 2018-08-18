json.extract! relation, :id, :user_id, :user_invited, :visible_name, :visible_last_name, :visible_born_date, :visible_phone, :visible_email, :created_at, :updated_at
json.url relation_url(relation, format: :json)
