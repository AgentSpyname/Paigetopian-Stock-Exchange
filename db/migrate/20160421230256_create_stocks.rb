class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :total_shares
      t.integer :shares_left
      t.integer :value

      t.timestamps null: false
    end
  end
end
