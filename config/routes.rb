Rails.application.routes.draw do
  namespace :admin do
    resources :file_manager, only: [:index, :destroy] do
      get 'download', on: :member
    end
  end

  root 'examples#index'

  resources :user_informations, only: [:edit, :update]
  resources :score_ranking, only: [:index]
  resources :examples, only: :index do
    get :buttons, :cards, :utilities_color, :utilities_border,
        :utilities_animation, :utilities_other, :login, :register,
        :forgot_password, :page_404, :blank, :charts, :tables,
        on: :collection
  end

end
