Rails.application.routes.draw do


  get 'totalpayments/index'
  devise_for :users
         root to: "homes#index"

         resources :users do
           resources :card1s do
             resources :menus do
                resources :cart1s do
                  resources :cardtotals
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

               get "/menus/:id", to: "menus#show"

end
             
          
end      
             post "checkouts/create", to: "checkouts#create"  
                
end

                  




