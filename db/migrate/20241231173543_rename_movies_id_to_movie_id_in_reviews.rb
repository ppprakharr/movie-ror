class RenameMoviesIdToMovieIdInReviews < ActiveRecord::Migration[8.0]
  def change
    rename_column :reviews, :movies_id, :movie_id
  end
end
