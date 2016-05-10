class Coupon < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :price, presence: true
  validates_numericality_of :price
  has_many :compras, dependent: :destroy
end
