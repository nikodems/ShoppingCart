class OrderItemsController < ApplicationController

	def create
		@order = current_order
		@order_item = @order.order_items.new(order_params)
		@order.save
		session[:order_id] = @order.id
	end
	
	def update
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.update_attributes(order_params)
		@order_items = current_order.order_items
		redirect_to root_path
	end
	
	def destroy
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.destroy
		@order_items = current_order.order_items
		redirect_to root_path

	end
	
	def destroy_all
		redirect_to root_path
	end
	private
	#Specify which fields are allowed to be created
	def order_params
		params.require(:order_item).permit(:product_id, :quantity, :price)
	end
end
