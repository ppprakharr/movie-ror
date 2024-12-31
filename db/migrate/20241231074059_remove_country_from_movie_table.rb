class RemoveCountryFromMovieTable < ActiveRecord::Migration[8.0]
  def change
    remove_column :movies, :country
  end
end
