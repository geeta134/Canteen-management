class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :quantity
      t.integer :total_amount
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
