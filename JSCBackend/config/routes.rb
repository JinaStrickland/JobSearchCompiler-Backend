Rails.application.routes.draw do
  resources :job_contacts
  resources :job_applications
  resources :interviews
  resources :follow_ups
  resources :contacts
  resources :companies
  resources :users

  # get '/followupsjobapp', to: 'follow_ups#followup_jobapp'

end
