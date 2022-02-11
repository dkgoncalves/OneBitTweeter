source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 5.6'

gem 'bootsnap', '>=1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Use to protect API from external calls
gem 'rack-attack'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
# Result pagination
gem 'will_paginate', '~> 3.1.0'
# Authorization
gem 'cancancan'
# Follow user
gem 'acts_as_follower', github: 'tcocca/acts_as_follower', branch: 'master'
# Like content é utilizado para fazer os likes e dislikes nos posts e comentários de usuários
gem 'acts_as_votable', '~> 0.11.1'
# Integration with Searchkick conecta com o ElasticSearch que serve para fazer buscas em grande escala
gem 'searchkick'
# Cron programming
gem 'whenever', :require => false
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# jwt authentication
gem 'knock', '~> 2.1', '>= 2.1.1'
# Serializer json
gem 'active_model_serializers'
# Adicionando gems para incluir fotos
gem 'carrierwave'
gem 'carrierwave-base64'
gem 'cloudinary'

group :test do
  # Generate record based in a model
  gem 'factory_bot_rails', "~> 4.0"
  # Fakker datas
  gem "ffaker"
  # Clean db adter test
  gem 'database_cleaner'
end

group :development, :test do
  # Test framework
  gem 'rspec-rails', '~> 3.5'
  # Debbug
  gem 'byebug', platform: :mri
  # Rspec test auxiliar gem
  gem 'rspec-json_expectations'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring gem 'spring' gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
