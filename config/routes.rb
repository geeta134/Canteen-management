Rails.application.routes.draw do


  get 'totalpayments/index'
  devise_for :users
         root to: "homes#index"

         resources :users do
           resources :card1s do
             resources :menus do
                resources :cart1s do
                  resources :cardtotals
                #resources :payments
              end
         end
       end
     end

          resources :users do
            resources :menus do

               resources :cart1s
                    resources :orders

                    delete "users/id/menus", to: "menus#destroy"

                    post "users_id_menus_id_cart1s", to: "cart1s#create"

                #resources :card1s
               #resources :payments

              post "users/id/menus/id/cart1s", to: "cart1s#create"

              #delete "users/id/posts/id/likes", to: "likes#destroy"

              #post "users/id/menus/id/cart1s", to: "totalpayments#create"

end
             
          
end            
                #resources :users do
                  #resources :card1s

                #end

              #get "user/id/card1", to: "card1s#new"

              #post "users/id/card1s", to: "card1s#create"


#delete "users/id/posts", to: "posts#destroy"

 
#get "users/id/menus", to: "orders#new"
     

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

                  




