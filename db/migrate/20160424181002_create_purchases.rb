class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :username
      t.integer :stock_id
      t.integer :shares
      t.float :profit

      t.timestamps null: false
    end
  end
end
