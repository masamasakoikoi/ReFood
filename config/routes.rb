Rails.application.routes.draw do
  # 管理者用
  # URL/admin/sign_in...
  devise_for:admin,skip:[:registrations,:passwords],controllers:{
    sessions:"admin/sessions"
  }
  
  #会員用
  # URL/users/sign_in...
  devise_for:users,skip:[:passwords],controllers:{
    registrations:"public/registrations",
    sessions:'public/sessions'
  }
  
  namespace :admin do
    
  end
  
  scope module: :public do
    resources :users ,only:[:show, :edit, :update, :unsubscribe, :status] do
    end
    
    resources :items ,only:[:index, :show] do
    end

    get 'homes/top'
    get 'homes/about'
  end
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
