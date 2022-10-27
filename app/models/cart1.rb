class Cart1 < ApplicationRecord

  #attr_accessible :menu_id, :quantity
  belongs_to :user
  belongs_to :menu
  has_many :cardtotals

 

end
