class CreateCart1s < ActiveRecord::Migration[6.1]
  def change
    create_table :cart1s do |t|
      t.integer :quantity
      t.integer :total
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
