class FixColumnTypes < ActiveRecord::Migration[6.0]
  def self.up
	change_column :order_items, :total_price, :decimal
	change_column :order_items, :price, :decimal
  end
end
