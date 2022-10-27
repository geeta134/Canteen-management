class OrdersController < ApplicationController
	def index
		@orders = Order.all.where(user_id: params[:user_id])
	end

	def new 

	#@order_detail = Order_detail.new

	end

	def create
	#debugger
	#debugger
    @order = Order.new
    @order.user_id =params[:user_id]
    @order.menu_id = params[:menu_id]
    #@order.food_name = params[:find_by[:id]]
    @order.quantity = params[:quantity]
    @order.total_price = @order.menu.price.to_i * @order.quantity.to_i
    #@order.total_price = @order.menu { |item| total_price = item.menu.price * item.quantity }
    #@order.total_price = @order.menu.to_a { |item| total = item.menu.price * item.quantity }
    @order.save
    redirect_to user_menu_orders_path
end
end


