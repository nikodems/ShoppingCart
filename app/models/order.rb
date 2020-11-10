class Order < ApplicationRecord
	has_many :order_items
	
	before_save :set_subtotal
	
	#Calculate the subtotal of the order_item
	#If statement checks if the item is valid, if so calculates the subtotal else sets price to 0
	#? = if statement
	def subtotal
		order_items.collect{|order_item| order_item.valid? ? order_item.price * order_item.quantity : 0}.sum
	end
	
	private
	
	#Set the subtotal of this instance's Order
	#Calls the function above
	def set_subtotal
		self[:subtotal] = subtotal
	end
end
