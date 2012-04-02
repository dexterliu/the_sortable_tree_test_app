TheSortableTreeTest::Application.routes.draw do
  root :to => 'welcome#index'

  resources :pages do
    collection do
      get :manage
      post :rebuild
    end
  end

  namespace :admin do
    resources :pages do
      collection do
        get :manage
        get :first_root_manage
        post :rebuild
      end
    end
  end

end
