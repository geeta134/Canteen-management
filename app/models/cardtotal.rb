class Cardtotal < ApplicationRecord
  belongs_to :user
  belongs_to :card1
  belongs_to :menu
  belongs_to :cart1
end
