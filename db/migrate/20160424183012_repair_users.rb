class RepairUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_id, :integer
    add_column :purchases, :user_id, :integer
    add_column :sales, :user_id, :integer
    remove_column :sales, :username, :string
    
  end
end
