Rails.application.routes.draw do
  post :contact_us, to: 'global/home#contact_us', as: :contact_us

  root to: 'global/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
