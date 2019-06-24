Rails.application.routes.draw do
  root to: 'homes#index'
  get 'posts/index'
  get 'musics/show'

end
