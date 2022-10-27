class AddAlltotalToCart1s < ActiveRecord::Migration[6.1]
  def change
    add_column :cart1s, :alltotal, :string
  end
end
