class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :menus, dependent: :destroy
         has_many :orders
         has_many :cart1s, dependent: :destroy 
         has_one :card1, dependent: :destroy

         has_one :main_image_attachment, dependent: :destroy

end
