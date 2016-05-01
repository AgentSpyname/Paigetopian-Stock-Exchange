class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :stock_id
      t.integer :shares
      t.float :profit
      t.string :username

      t.timestamps null: false
    end
  end
end
