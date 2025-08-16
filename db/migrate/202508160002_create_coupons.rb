class CreateCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_coupons do |t|
      t.integer :product_id
      t.string :code
      t.integer :discount_amount
      t.datetime :valid_until
      t.integer :used_count, default: 0
      t.timestamps
    end
  end
end
