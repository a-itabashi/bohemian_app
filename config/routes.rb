Rails.application.routes.draw do
  root to: 'musics#index'
  
  resources :musics do
    resources :posts
  end

  mount ActionCable.server => '/cable'
end
