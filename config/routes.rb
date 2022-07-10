Rails.application.routes.draw do
  get '/about' => 'pages#about'
  get '/about/author' => 'pages#author'
end
