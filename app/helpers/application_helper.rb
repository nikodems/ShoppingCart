module ApplicationHelper

	#Global to help with retrieving the order_id
	#If the session is active then retrieve the order_id from the session, else create a new id
	def	current_order
		if !session[:order_id].nil?
			if Order.find(session[:order_id]).nil?
				Order.new
			else
				Order.find(session[:order_id])
			end
		else
			Order.new
		end
	end
end
