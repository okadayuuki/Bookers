Rails.application.routes.draw do

	root :to => 'homes#top'
 get '/top' => 'homes#top'
 get '/books' => 'books#index'
 post '/books' => 'books#create'
 get 'books/:id' => 'books#show',as: 'show'
 get 'books/:id/edit' => 'books#edit', as: 'edit'
 patch 'books/:id' => 'books#update', as:'update'
 delete '/books/:id' => 'books#destroy',as: 'destroy'
 resources :books,only:[:create] do
 
 	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end