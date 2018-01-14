class CreateSioris < ActiveRecord::Migration[5.1]
  def change
    create_table :sioris do |t|
      t.text    :content
      t.date    :departure_date
      
      t.timestamps
    end
    
    add_index:sioris, [:departure_date]
  end
end
