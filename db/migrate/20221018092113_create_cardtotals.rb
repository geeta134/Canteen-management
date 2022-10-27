class CreateCardtotals < ActiveRecord::Migration[6.1]
  def change
    create_table :cardtotals do |t|
      t.string :final_amount
      t.references :user, null: false, foreign_key: true
      t.references :card1, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.references :cart1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
