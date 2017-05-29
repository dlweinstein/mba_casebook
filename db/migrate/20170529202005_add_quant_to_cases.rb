class AddQuantToCases < ActiveRecord::Migration[5.0]
  def change

add_column :cases, :quant, :integer

  end
end
