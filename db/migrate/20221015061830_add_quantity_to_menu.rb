class AddQuantityToMenu < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :quantity, :string
    add_column :menus, :total_price, :string
  end
end
