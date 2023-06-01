class Card1sController < ApplicationController
	def index
		@card1s = Card1.all.where(user_id: params[:user_id])
	end

	def new
		@card1 = Card1.new
	end

	def create
		#debugger
	#@card1 = Card1.new
	#card1.user_id = params[:user_id]
    @user = User.find(params[:user_id])

    @card1 = @user.build_card1(card1_params)
    @card1.save
    redirect_to root_path
	end


	def edit
		#debugger
		#@user = User.find(params[:user_id])
		@card1 = Card1.find(params[:id])
	end

	def update
		#debugger
		@card1 = Card1.find(params[:id])
		a = params[:card1][:amount].to_i + @card1.amount.to_i
		@card1.update(amount: a)
        redirect_to root_path
	end

private
	def card1_params
      params.permit(params[:user_id], :amount)
    end
end
