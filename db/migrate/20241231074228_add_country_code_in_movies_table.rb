class AddCountryCodeInMoviesTable < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :country_code, :string
  end
end