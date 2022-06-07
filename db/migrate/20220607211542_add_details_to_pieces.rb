class AddDetailsToPieces < ActiveRecord::Migration[7.0]
  def change
    add_column :pieces, :recurring, :string
  end
end
