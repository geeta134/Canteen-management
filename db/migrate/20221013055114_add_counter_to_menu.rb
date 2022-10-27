class AddCounterToMenu < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :counter, :string
  end
end
