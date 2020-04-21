Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
  
  root 'welcome#index'


  get 'articles/new' do 
 
    # article GET    /articles/:id(.:format)      articles#show
 
  end
  resources :articles do
    resources :comments
  end
  

end
