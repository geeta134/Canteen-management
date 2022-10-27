class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :food_name
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
