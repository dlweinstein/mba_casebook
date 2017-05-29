class AddInterviewerLedToCases < ActiveRecord::Migration[5.0]
  def change

add_column :cases, :interviewer_led, :boolean

  end
end
