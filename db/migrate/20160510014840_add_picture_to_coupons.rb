class AddPictureToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :picture, :string
  end
end
