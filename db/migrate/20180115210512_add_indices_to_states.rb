class AddIndicesToStates < ActiveRecord::Migration[5.1]
  def change
    add_index :states, :name
    add_index :states, :year
  end
end
