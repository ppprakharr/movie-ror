class AddSummaryRowInMoviesTable < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :summary, :string
  end
end
