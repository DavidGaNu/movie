json.extract! peli, :id, :title, :description, :movie_length, :director, :main_actor, :rating, :created_at, :updated_at
json.url peli_url(peli, format: :json)
