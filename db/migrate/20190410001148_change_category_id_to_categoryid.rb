class ChangeCategoryIdToCategoryid < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :category_id
    add_column :posts, :categoryId, :integer
  end
end
