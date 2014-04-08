HackNews::Application.routes.draw do
  root to: 'links#index'
  resources :links do
      resources :comments
  end
  resources :comments
end
