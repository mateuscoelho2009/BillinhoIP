Rails.application.routes.draw do
  get 'institutions/list'
  get 'institutions/show'
  get 'institutions/new'
  get 'institutions/create'
  root 'application#hello'
end
