class AddIndexInReviewsModel < ActiveRecord::Migration[8.0]
  def change
    add_index :reviews, [:user_id, :movies_id], unique: true
  end
end
