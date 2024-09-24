class ChangeColumnOnPost < ActiveRecord::Migration[7.2]
  def change
    change_column_null :posts, :body, false
    change_column_null :posts, :answer, false, false
    change_column_default :posts, :answer, from: nil, to: false
  end
end
