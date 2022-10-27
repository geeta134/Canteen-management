class AddQuantityToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :quantity, :number
  end
end
