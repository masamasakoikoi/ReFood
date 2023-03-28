Rails.application.routes.draw do
  # 顧客用
  # URL/users/sign_in...
  devise_for:users,skip:[:passwords],controllers:{
    registrations:"public/registrations",
    sessions:'public/sessions'
  }
  
  # 管理者用
  # URL/admin/sign_in...
  devise_for:admin,skip:[:registrations,:passwords],controllers:{
    sessions:"admin/sessions"
  }
  
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/unsubscribe'
    get 'users/status'
  end
  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
