Rails.application.routes.draw do
root 'institutions#begpag'

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
   get 'institutions/begpag'
get 'institutions/show_institutions'
get 'institutions/show_matriculations'
get 'institutions/show_students'

   get 'students/list'
   get 'students/new'
   post 'students/create'
   patch 'students/update'
   get 'students/list'
   get 'students/show'
   get 'students/edit'
   get 'students/delete'
   get 'students/update'
   get 'students/show_genders'
   get 'students/show_payment_methods'

   get 'matriculations/list'
   get 'matriculations/new'
   post 'matriculations/create'
   patch 'matriculations/update'
   get 'matriculations/list'
   get 'matriculations/show'
   get 'matriculations/edit'
   get 'matriculations/delete'
   get 'matriculations/update'
end
