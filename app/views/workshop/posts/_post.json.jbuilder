json.extract! post, :id, :title, :body, :author, :slug, :created_at, :updated_at
json.url post_url(post, format: :json)
