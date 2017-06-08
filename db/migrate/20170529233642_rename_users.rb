class RenameUsers < ActiveRecord::Migration[5.0]
  def change

    rename_table :users, :students
  end
end
