class Coupon < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader 
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :price, presence: true
  validates :name, presence: true
  validates_numericality_of :price
  has_many :compras, dependent: :destroy
  validate  :picture_size
   
   private
    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        flash[:error]="the image should be less than 5MB"
      end
    end
end
