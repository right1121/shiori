class CreateTouristDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :tourist_details do |t|
      t.integer :tourist_spot_id
      t.string  :title
      t.text    :content
      t.integer :longitude
      t.integer :latitude

      t.timestamps
    end
    add_index:tourist_details, [:tourist_spot_id]
  end
end
