fail 'Need to set RARE_STREET_DATABASE_USERNAME' unless ENV['RARE_STREET_DATABASE_USERNAME']
fail 'Need to set RARE_STREET_DATABASE_PASSWORD' unless ENV['RARE_STREET_DATABASE_PASSWORD']
SETTINGS = YAML.load_file("#{Rails.root.to_s}/config/settings.yml")[Rails.env].deep_symbolize_keys
