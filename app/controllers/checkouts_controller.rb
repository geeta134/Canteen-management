class CheckoutsController < ApplicationController

	def create
		cart1 = Cart1.find(params[:id])
		@session = Stripe::Checkout::Session.create({
			payment_method_types: ['card'],
			line_items: [{
				#name: cart1.menu.food_name,
				price: cart1.menu.price,
				#currency: "usd",
				quantity: 1
			}],
			mode: 'payment',
			success_url: root_url,
			cancel_url: root_url,
		})
		respond_to do |format|
			format.js
		end
		end
	end
