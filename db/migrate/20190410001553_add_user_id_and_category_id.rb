class AddUserIdAndCategoryId < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :categoryId
    add_column :posts, :user_id, :integer
    add_column :posts, :category_id, :integer
  end
end
