Rails.application.routes.draw do
   get 'institutions/list'
   get 'institutions/new'
   post 'institutions/create'
   patch 'institutions/update'
   get 'institutions/list'
   get 'institutions/show'
   get 'institutions/edit'
   get 'institutions/delete'
   get 'institutions/update'
   get 'institutions/show_kinds'

  root 'application#hello'
end
