Rails.application.routes.draw do
  resources :haunted_houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy] do
    resources :curses, only: [:new, :create]
  end
end

# haunted_houses#show
# monsters#new
# monsters#create
# monsters#destroy
# curses#new
# /monsters/:monster_id/curses/new
# curses#create
# /monsters/:monster_id/curses
