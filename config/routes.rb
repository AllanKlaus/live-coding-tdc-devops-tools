Rails.application.routes.draw do
  root 'home#success'
  get 'fail' => 'home#fail'
  get 'loop' => 'home#loop'
  get 'send' => 'home#send_to_sentry'
end
