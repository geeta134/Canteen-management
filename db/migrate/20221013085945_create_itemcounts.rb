class CreateItemcounts < ActiveRecord::Migration[6.1]
  def change
    create_table :itemcounts do |t|
      t.string :counter
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
