Rails.application.routes.draw do
mount RailsAdmin::Engine => '/site/admin', as: 'rails_admin'
#mount Spree::Core::Engine, at: '/loja'
#match "/api/*" => redirect("/loja/api/"), via: [:get]
root to: 'categorias#index'

namespace :admin do
  resources :clientes
  resources :categorias
  resources :recursos
  resources :super_categorias
  resources :planos do
    resources :definicoes
  end
  get "rss", to: "clientes#rss"
  devise_for :usuarios,class_name: "Admin::Usuario",path: '',
             path_names: { edit:'alterar',
                          cancel:'cancelar',
                          sign_up: 'registrar',
                          sign_in: 'entrar',
                          sign_out: 'sair'
                        },
  controllers: {
    sessions: 'admin/usuarios/sessions',
    registrations: 'admin/usuarios/registrations',
    passwords: 'admin/usuarios/passwords'
  }
end
resources :fotos, only: [:create]
resources :contatos, only: [:index,:create]
resources :registros, only: [:index,:create]
resources :informativos, only: [:create]
get '/principal', to: 'principal#index'
get 'contatos/listar', to: 'contatos#listar'
get 'registros/listar', to: 'registros#listar'
get 'categorias', to: 'categorias#index'
get 'recursos', to: 'recurso#index'
get 'sobre', to: 'sobre#index'
get 'planos', to: 'plano#index'
get 'registrar/:id', to: 'registro#index'
get 'categorias/:id', to: 'categorias#show'
get 'recursos/:id', to: 'recurso#show'
get 'painelc/index'
get 'galeria/index'
get 'anuncios', to: "anuncios#index"
get 'rss_v1/:type/:id', to:"rss_feed#index"
match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]
end
