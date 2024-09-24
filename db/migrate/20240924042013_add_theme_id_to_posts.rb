class AddThemeIdToPosts < ActiveRecord::Migration[7.2]
  def change
    add_reference :posts, :themes, null: false, foreign_key: true
  end
end
