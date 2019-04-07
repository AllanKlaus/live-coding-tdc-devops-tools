Rails.application.routes.draw do
  root 'home#success'
  get 'fail' => 'home#fail'
  get 'send' => 'home#send_to_sentry'
end
