class RemoveProfileId < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :profile_id, :integer
    add_column :comments, :user_id, :integer
  end
end
