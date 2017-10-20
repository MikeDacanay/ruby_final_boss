Rails.application.routes.draw do

  get 'organizations/index'

  get 'main' => "users#index" 

  get 'groups' => "organizations#index"

  get 'groups/:id' => "organizations#show"

  post 'users/:id/groups' => "organizations#create"

  post 'sessions' => "sessions#create"

  post 'users' => "users#create"

  post 'groups/:org_id/memberships' => "memberships#create"

  delete 'sessions/:id' => "sessions#destroy"

  delete 'memberships/:membership_id' => "memberships#destroy"

end
