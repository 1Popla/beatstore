class AddBeatIdToComments < ActiveRecord::Migration[7.0]
  
  def change
    add_column :comments, :beat_id, :integer
  end
end
