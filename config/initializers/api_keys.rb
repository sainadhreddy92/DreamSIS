config_file_path = File.join(ENV['SHARED_CONFIG_ROOT'] || "#{Rails.root}/config", "api-keys.yml")
API_KEYS = YAML::load(ERB.new((IO.read(config_file_path))).result)