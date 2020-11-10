class CartsController < ApplicationController
  def show
	@order_items = current_order.order_items
  end
  
  def destroy
	@carts.destroy_all
	redirect_to root_path
  end
  
end
