class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.references :user, index: true, foreign_key: true
      t.references :coupon, index: true, foreign_key: true
      t.text :contenido

      t.timestamps null: false
    end
  end
end
