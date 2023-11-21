class ChangeCapacityColumnToString < ActiveRecord::Migration[7.1]
  def change
    change_column(:cars, :capacity, :string)
  end
end
