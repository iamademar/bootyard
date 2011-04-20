Bootyard::Application.routes.draw do
  resources :pages do
    collection do
      get 'portfolio'
    end
  end

  resources :messages
  
  root :to => "pages#index"

end
