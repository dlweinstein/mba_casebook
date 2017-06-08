class RenameStudents < ActiveRecord::Migration[5.0]
  def change
rename_table :students, :users
  end
end
