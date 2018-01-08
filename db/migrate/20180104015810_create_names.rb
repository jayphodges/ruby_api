class CreateNames < ActiveRecord::Migration[5.1]
  def change
    create_table :names do |t|
      t.string :name
      t.integer :year
      t.string :gender
      t.string :state
      t.integer :count
    end
  end
end
