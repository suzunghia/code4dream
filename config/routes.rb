Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints subdomain: 'blog' do

    get 'category', to: 'blog/articles#category'
    get 'search', to: 'blog/search#index'

    resources :articles, module: 'blog', param: :permalink
    concern :paginatable do
      get '(page/:page)', action: :index, on: :collection, as: ''
    end
    resources :home, module: 'blog', path: '/',  concerns: :paginatable
  end
  root :to => 'blog/home#index'
end
