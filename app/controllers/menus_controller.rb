class MenusController < ApplicationController
	def index
		#debugger
		@q =  Menu.ransack(params[:q])
		@menus = @q.result(distinct: true)
		#@menus = Menu.all
	end

	def new
        @menu = Menu.new
	end

	def create
		#debugger
    @menu = Menu.new
    @menu.user_id =params[:user_id]
    @menu.food_name = params[:food_name]
    @menu.price = params[:price]
    @menu.main_image = params[:main_image]
    @menu.counter = params[:counter]
    
    @menu.save
   #@user = User.find(params[:user_id])
   #@menu = @user.menus.create(menu_params)
   redirect_to user_menus_path
   end

   def show
   	#debugger
   	@user = User.find(params[:user_id])
   	#@card1 = Card1.find(params[:card1_id]) 
    @menu = Menu.find(params[:id])
   end

   def edit
   	#debugger
   	@menu = Menu.find(params[:id])
   end

   def update
   	#debugger
   	@menu = Menu.find(params[:id])
    @menu.update(food_name:params[:menu][:food_name], price:params[:menu][:price], main_image:params[:menu][:main_image])
    redirect_to  user_menus_path
   end

   def destroy
   	#debugger
   	#@user = User.find(params[:user_id])
   	@menu = Menu.find(params[:id])

   	@menu.destroy
   	redirect_to root_path

   end

private
	#debugger
	#def menu_params
		#params.require(:menu).permit(params[:user_id], :food_name, :price, :main_image)
	#end
end
