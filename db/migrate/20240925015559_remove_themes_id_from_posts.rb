class RemoveThemesIdFromPosts < ActiveRecord::Migration[7.2]
  def change
    remove_column :posts, :themes_id, :bigint
  end
end
