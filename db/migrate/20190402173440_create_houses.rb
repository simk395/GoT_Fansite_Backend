class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :region
      t.string :slogan
      
      t.timestamps
    end
  end
end
