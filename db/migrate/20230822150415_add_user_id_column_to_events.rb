class AddUserIdColumnToEvents < ActiveRecord::Migration[6.1]
  def change
  add_column :events, :user_id, :integer
    add_foreign_key :events, :users
  end
end
