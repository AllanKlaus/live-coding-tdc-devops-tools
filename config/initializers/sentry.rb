Raven.configure do |config|
  config.dsn = 'http://2bffc3b9086046da8429227419bbb2e8:5e505cd2bbb342f68fff47ca8723d592@sentry.minha-aplicacao:8080/3'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
