Raven.configure do |config|
  config.dsn = 'http://110270f196fd47f79e91d69893593524:281458cdb6884c898a3be9154019c715@localhost:8080/2'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
