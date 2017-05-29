class AddStructureToCases < ActiveRecord::Migration[5.0]
  def change

add_column :cases, :structure, :integer

  end
end
