class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.float :amount
      t.string :status
      t.integer :month
      t.integer :year

      t.timestamps null: false
    end
  end
end
