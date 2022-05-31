class CreateMainGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :main_goals do |t|
      t.string :life
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
