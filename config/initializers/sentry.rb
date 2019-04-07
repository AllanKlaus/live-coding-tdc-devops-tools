Raven.configure do |config|
  config.dsn = 'http://674ae2ba1c314bddaf573a2cfaef4130:25ed03f4b132409fb662cc39ade0cfc0@localhost:8080/2'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
