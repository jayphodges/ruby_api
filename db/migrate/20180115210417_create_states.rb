class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :year
      t.string :gender
      t.string :state
      t.integer :count

      t.timestamps
    end
  end
end
