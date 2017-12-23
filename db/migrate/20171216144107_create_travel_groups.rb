class CreateTravelGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_groups do |t|
      t.integer :user_id,   :null => false
      t.integer :siori_id,  :null => false
      
      t.timestamps
    end
    add_index:travel_group, [:user_id]
    add_index:travel_group, [:siori_id]
  end
end