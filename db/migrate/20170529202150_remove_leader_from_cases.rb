class RemoveLeaderFromCases < ActiveRecord::Migration[5.0]
  def change

remove_column :cases, :leader, :string

  end
end
