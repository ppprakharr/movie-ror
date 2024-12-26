class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :country
      t.string :year_of_release

      t.timestamps
    end
  end
end
