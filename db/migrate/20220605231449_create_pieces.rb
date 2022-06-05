class CreatePieces < ActiveRecord::Migration[7.0]
  def change
    create_table :pieces do |t|
      t.integer :points
      t.text :description
      t.integer :time_minutes
      t.references :elephant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
