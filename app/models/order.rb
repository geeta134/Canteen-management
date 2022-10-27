class Order < ApplicationRecord
  belongs_to :user
  belongs_to :menu

   before_save :sub_total

  def sub_total
  menu.price * quantity
  end
end
