# frozen_string_literal: true

Rails.application.routes.draw do
  resources :userratings, except: %i[new edit]
  resources :reviews
  resources :videotags
  resources :video_tags
  resources :tags, except: %i[new edit]
  resources :videos, except: %i[new edit]
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  resources :users, only: %i[index show]
end
