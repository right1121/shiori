class AddOwnerToTravelGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :travel_groups, :Owner, :boolean, default: false, null: false
  end
end
