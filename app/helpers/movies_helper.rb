module MoviesHelper
  def rating_badge_for(movie)
    if movie.score > 8.0
      "badge-success"
    elsif movie.score > 5.0
      "badge-warning"
    else
      "badge-danger"
    end
  end
end
