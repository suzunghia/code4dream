Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints subdomain: 'blog' do
  	resources :articles, module: 'blog'
    concern :paginatable do
      get '(page/:page)', action: :index, on: :collection, as: ''
    end
    resources :home, module: 'blog', concerns: :paginatable
  	root :to => 'blog/home#index' 
  	get 'category', to: 'blog/articles#category'
  end
  root :to => 'blog/home#index'
end
