class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :display_name
      t.string :display_pic
      t.timestamps
    end
  end
end
