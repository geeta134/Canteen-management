class CreateTotalpayments < ActiveRecord::Migration[6.1]
  def change
    create_table :totalpayments do |t|
      t.string :finaltotal
      t.references :cart1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
