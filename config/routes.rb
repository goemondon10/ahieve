Rails.application.routes.draw do
  resources :contacts
  get 'sessions/new'

  root "blogs#top"
  resources :blogs do
    collection do
      post :confirm
    end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  
if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/inbox"
end  

end

