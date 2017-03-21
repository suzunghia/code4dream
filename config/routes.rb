Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  constraints subdomain: 'blog' do
  	resources :articles, module: 'blog'
  	root :to => 'blog/articles#index'
  	get 'category', to: 'blog/articles#category'	
  end
  constraints subdomain: 'sub' do
  	get 'sub', to: 'sub#index'
  end
end
