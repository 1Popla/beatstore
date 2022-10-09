class AddCategoryToBeats < ActiveRecord::Migration[7.0]
  def change
    add_reference :beats, :category, null: false, foreign_key: true
  end
end
