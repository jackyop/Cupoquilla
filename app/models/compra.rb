class Compra < ActiveRecord::Base
  belongs_to :user
  belongs_to :coupon
  validates :user_id, presence: true
  validates :coupon_id, presence: true
  validates :contenido, presence: true, length: { maximum: 140 }
end
