class FixColumnNames < ActiveRecord::Migration[6.0]
  def self.up
	rename_column :order_items, :total_decimal, :total_price
	rename_column :order_items, :price_decimal, :price
  end
end
