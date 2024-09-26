class AddUrlAndBioToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :url, :string
    add_column :users, :bio, :text
  end
end
