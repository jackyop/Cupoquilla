class ChangePrice < ActiveRecord::Migration
  def change
  	change_table :coupons do |t|
      t.change :price, :string
    end
  end
end
