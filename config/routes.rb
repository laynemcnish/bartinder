Rails.application.routes.draw do
   root 'dashboard#index'

   resource :dashboard, controller: :dashboard do
     post 'submit' => 'dashboard#submit'
     get 'restaurant' => 'dashboard#restaurant'
   end
   resource :restaurants, only: [:show]
   resource :menus, only: [:create]
end
