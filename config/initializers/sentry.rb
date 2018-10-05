Raven.configure do |config|
  config.dsn = 'http://f9f671ccc17f48e59c5ec74a3f675efc:849473fd2a6c46c0addb4274d08bf22a@localhost:8080/2'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
