class Cart1sController < ApplicationController

	def index
		@cart1s = Cart1.all.where(user_id: params[:user_id])
	end
	def new
		#@cart1 = Cart1.new
	end

	def create
	#debugger
	@cart1 = Cart1.new
    @cart1.user_id = params[:user_id]
    @cart1.menu_id = params[:menu_id]
    @cart1.quantity = params[:quantity]
    # @user = User.find(params[:user_id])
    # @menu = Menu.find(params[:menu_id])
    # @card1 = Card1.find(params[:card1_id])
    # @cart1 = Cart1.new(cart_params)
    @cart1.total = @cart1.menu.price.to_i * @cart1.quantity.to_i
    @cart1.save
    redirect_to user_menu_cart1s_path
	end

	def edit
		#debugger
		@menu = Menu.find(params[:menu_id])
		@cart1 = Cart1.find(params[:id])
	end

	def update
	#debugger	
	@cart1 = Cart1.find(params[:id])
    @cart1.update(quantity:params[:cart1][:quantity])

    @cart1.total = @cart1.menu.price.to_i * @cart1.quantity.to_i
    @cart1.save

    redirect_to user_menu_cart1s_path
   end


	def destroy
		@cart1 = Cart1.find(params[:id])
		@cart1.destroy
		redirect_to user_menu_cart1s_path
	end
end