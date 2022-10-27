class CreateCard1s < ActiveRecord::Migration[6.1]
  def change
    create_table :card1s do |t|
      t.string :amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
