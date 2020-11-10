class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :product
	
	before_save :set_price
	before_save :set_total_price
	
	#Set the price of this instance's order_item
	#If the item has persisted throughout the session keep the same price, else retrieve it from product
	def set_price
		if persisted?
			self[:price]
		else
			product.price
		end
	end
	
	def calculate_total_price
		price * quantity
	end
	
	private
	
	def set_price
		self[:price] = price
	end
	
	def set_total_price
		self[:total_price] = total_price * quantity
	end
end
