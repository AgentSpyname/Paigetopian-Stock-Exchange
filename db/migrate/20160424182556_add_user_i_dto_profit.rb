class AddUserIDtoProfit < ActiveRecord::Migration
  def change
    add_column :users, :user_id, :integer
    remove_column :purchases, :username, :string
  end
end
