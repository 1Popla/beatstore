class CreateBeats < ActiveRecord::Migration[7.0]
  def change
    create_table :beats do |t|
      t.string :Title
      t.integer :bpm
      t.string :genre
      t.text :description
      t.string :scale
      t.decimal :price, precision: 5, default: 29

      t.timestamps
    end
  end
end
