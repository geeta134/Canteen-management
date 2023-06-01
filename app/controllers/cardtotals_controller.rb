class CardtotalsController < ApplicationController
	def index
        @cardtotals = Cardtotal.all
    end

    def create
     #debugger
     #if @Cardtotal.amount == 0
        #flash[:notice] = "Please update your amount"
    #else   
     @user = params[:user_id]
     #@menu = Menu.find(params[:menu_id])
     @card1 = Card1.find(params[:card1_id])

     if @card1.amount.to_i < $sum
        flash[:notice] = "Insuffucient Balance please update"
        redirect_to edit_user_card1_path(current_user, current_user.card1.id)
    else
     #@cardtotal = Cardtotal.find(params[:cardtotal_id])
     final_amount = @card1.amount.to_i - $sum
     @card1.update(amount: final_amount)
     redirect_to user_card1s_path

     end 
  end		
end
