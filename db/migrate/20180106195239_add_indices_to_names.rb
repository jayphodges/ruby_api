class AddIndicesToNames < ActiveRecord::Migration[5.1]
  def change
    add_index :names, :name
    add_index :names, :year
  end
end
