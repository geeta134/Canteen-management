class ChangeFieldNameFromDecimalToInteger < ActiveRecord::Migration[6.1]
  def change
     change_column :cards, :quantity, :integer
  end
end
