class Menu < ApplicationRecord
  has_many :orders
  belongs_to :user
  has_many :cart1s, dependent: :destroy 
  has_one_attached :main_image
end
