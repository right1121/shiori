class CreateTravelGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_groups do |t|
      t.references  :user,  index: true, foreign_key: true
      t.references  :siori, index: true, foreign_key: true
      
      t.timestamps
    end
    add_index:travel_groups, [:user_id]
    add_index:travel_groups, [:siori_id]
  end
end
