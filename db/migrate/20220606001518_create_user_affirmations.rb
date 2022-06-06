class CreateUserAffirmations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_affirmations do |t|
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
