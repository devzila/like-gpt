json.extract! workshop_author, :id, :first_name, :last_name, :bio, :email, :created_at, :updated_at
json.url workshop_author_url(workshop_author, format: :json)
