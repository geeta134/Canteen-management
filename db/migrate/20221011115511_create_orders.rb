class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :food_name
      t.integer :quantity
      t.string :total_price
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
