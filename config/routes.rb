# -*- encoding : utf-8 -*-
# !/bin/env ruby
# encoding: utf-8

Rails.application.routes.draw do
  get 'mods/one'

  get 'mods/two'

  get 'mods/feedback'

  get 'mods/explain'

  get 'users/new'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]

  namespace :module1 do     
    resources :module1
  end 

  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/test',    to: 'static_pages#test',    via: 'get'

  match "/mods/:id/one", to: 'mods#one', via: 'get'
  match "/mods/:id/two", to: 'mods#two', via: 'get'
  match "/mods/:id/feedback", to: 'mods#feedback', via: 'get'
  match "/mods/:id/explain", to: 'mods#explain', via: 'get'

  match '/module1', to: 'static_pages#module1', via: 'get'
  match '/module1_2', to: 'static_pages#module1_2', via: 'get'
  match '/module1_fb', to: 'static_pages#module1_fb', via: 'get'
  match '/module1_ex', to: 'static_pages#module1_ex', via: 'get'

  match '/module2', to: 'static_pages#module2', via: 'get'
  match '/module2_2', to: 'static_pages#module2_2', via: 'get'
  match '/module2_fb', to: 'static_pages#module2_fb', via: 'get'
  match '/module2_ex', to: 'static_pages#module2_ex', via: 'get'

  match '/module3', to: 'static_pages#module3', via: 'get'
  match '/module3_2', to: 'static_pages#module3_2', via: 'get'
  match '/module3_fb', to: 'static_pages#module3_fb', via: 'get'
  match '/module3_ex', to: 'static_pages#module3_ex', via: 'get'

  match '/module4', to: 'static_pages#module4', via: 'get'
  match '/module4_2', to: 'static_pages#module4_2', via: 'get'
  match '/module4_fb', to: 'static_pages#module4_fb', via: 'get'
  match '/module4_ex', to: 'static_pages#module4_ex', via: 'get'

  match '/module5', to: 'static_pages#module5', via: 'get'
  match '/module5_2', to: 'static_pages#module5_2', via: 'get'
  match '/module5_fb', to: 'static_pages#module5_fb', via: 'get'
  match '/module5_ex', to: 'static_pages#module5_ex', via: 'get'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
