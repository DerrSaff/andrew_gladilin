json.extract! post, :id, :header, :text, :created_at, :updated_at
json.url post_url(post, format: :json)