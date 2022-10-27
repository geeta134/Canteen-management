class ItemcountsController < ApplicationController

	def index
	end

	def new
		#@itemcount = Itemcount.new
	end

	def create
	 @itemcount = Itemcount.new
     @itemcount.user_id =params[:user_id]
     @itemcount.menu_id = params[:menu_id]
     @itemcount.counter = params[:counter] 
     @itemcount.save
     redirect_to  user_menus_path
	end

end
