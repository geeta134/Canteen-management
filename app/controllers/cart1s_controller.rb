class Cart1sController < ApplicationController

	def index
		@cart1s = Cart1.all.where(user_id: params[:user_id])
	end
	def new
		@cart1 = Cart1.new
	end

	def create
	#debugger
	#sum = 0
	@cart1 = Cart1.new
    @cart1.user_id =params[:user_id]
    @cart1.menu_id = params[:menu_id]
    @cart1.quantity = params[:quantity]
    @cart1.total = @cart1.menu.price.to_i * @cart1.quantity.to_i
    @cart1.save
    redirect_to user_menu_cart1s_path
	end

	def destroy
		#debugger
		#@user = User.find(params[:user_id])
		@cart1 = Cart1.find(params[:id])
		@cart1.destroy
		redirect_to user_menu_cart1s_path
	end
end


#total_price = @order.items.to_a.sum { |item| total = item.product.price*item.quantity }