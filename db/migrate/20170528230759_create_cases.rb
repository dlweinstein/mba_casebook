class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.string :case_type
      t.boolean :leader
      t.string :industry
      t.integer :page
      t.integer :user_id

      t.timestamps

    end
  end
end
