class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.integer :year
      t.float :price
      t.text :description
      t.string :location
      t.string :colour
      t.integer :capacity

      t.timestamps
    end
  end
end
