class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.text :body
      t.text :comment
      t.boolean :answer
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
