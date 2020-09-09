json.extract! movie, :id, :budget, :company, :country, :director, :genre, :gross, :rating, :released, :runtime, :created_at, :updated_at
json.url movie_url(movie, format: :json)
