require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Twitter4Zombies::Application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
    resources :users, only: [:edit, :update, :show]
    resource :session, only: [:destroy]
    resources :tweets, only: [:create, :destroy]
    resource :searches, only: [:create]
  end

  constraints Monban::Constraints::SignedOut.new do
    get "/" => "landings#show"
    resource :session, only: [:new, :create]
    resources :users, only: [:new, :create]
  end
end
