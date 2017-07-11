Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  constraints subdomain: 'blog' do
    get 'category', to: 'blog/articles#category'
    get 'search', to: 'blog/search#index'
    get '/articles/:permalink', to: 'blog/articles#show'
    concern :paginatable do
      get '(page/:page)', action: :index, on: :collection, as: ''
    end

    resources :home, module: 'blog', path: '/',  concerns: :paginatable
  end

  get 'contact', to: 'contact#index'
  root to: 'home#index'
end
