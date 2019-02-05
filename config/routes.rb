Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :snippets
  end
end
