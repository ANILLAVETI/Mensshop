Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "home", to: "home#index"
  get "about" , to: "home#about" 
  get '/user/login', to: 'user#login'
  post '/user/login', to: 'user#verify'
  get '/user/signup', to: 'user#signup'
  post '/user/signup', to: 'user#create'
  get 'user/payment', to: 'user#payment'
  post 'user/payment', to: 'user#payment'
  get '/winterwear', to: 'costumes#winterwear'
  get '/about' ,to: 'home#about'
  get '/contact' ,to: 'home#contact'
  get '/bridalcollection', to: 'costumes#bridalcollection'
  get '/partywear', to: 'costumes#partywear'
  get '/westerndresses', to: 'costumes#westerndresses'
  get '/fancydresses', to: 'costumes#fancydresses'
  get '/winterwear', to: 'costumes#winterwear'

  resources :home
  resources :user
  # Defines the root path route ("/")
   root "home#index"
end
