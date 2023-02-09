source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "~> 3.0.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", github: "rails/rails", branch: "7-0-stable"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets", github: "rails/sprockets"
gem "sprockets-rails", github: "rails/sprockets-rails"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
# gem "jsbundling-rails"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails", github: "rails/importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# gem "turbo-rails", github: "hotwired/turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
# gem "stimulus-rails", github: "hotwired/stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
# gem "cssbundling-rails", github: "rails/cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", github: "rails/jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"
gem "bcrypt_pbkdf", github: "net-ssh/bcrypt_pbkdf-ruby"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem "sassc", github: "sass/sassc-ruby"
gem "sassc-rails", github: "sass/sassc-rails"

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", github: "rails/coffee-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
#gem "image_processing", "~> 1.2"
gem "image_processing", github: "janko/image_processing"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug"

  # Use sqlite3 as the database for Active Record
  gem "sqlite3", "~> 1.4"

  gem "rspec-rails"

  gem "benchmark-perf", github: "piotrmurach/benchmark-perf"
  gem "benchmark-trend", github: "piotrmurach/benchmark-trend"
  gem "benchmark-malloc", github: "piotrmurach/benchmark-malloc"
  gem "rspec-benchmark", github: "piotrmurach/rspec-benchmark"

  gem "rails-controller-testing"
  gem "rails-dom-testing"

  gem "capybara"
  gem "webdriver"
  gem "selenium-webdriver", github: "SeleniumHQ/selenium"

  gem "factory_bot"
  gem "factory_bot_rails"
  gem "database_cleaner"
  gem "ffaker", github: "ffaker/ffaker"
  gem "shoulda-matchers"
end

group :production do
  gem "mysql2", github: "brianmario/mysql2"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", github: "rails/web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "net-ssh", github: "net-ssh/net-ssh"
  gem "net-ssh-gateway", github: "net-ssh/net-ssh-gateway"
  gem "net-ssh-multi", github: "net-ssh/net-ssh-multi"
  gem "net-scp", github: "net-ssh/net-scp"
  gem "net-sftp", github: "net-ssh/net-sftp"
  gem "airbrussh", github: "mattbrictson/airbrussh"
  gem "sshkit", github: "capistrano/sshkit"

  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.6", require: false
  gem "capistrano-passenger", require: false
end

gem "cancancan", github: "CanCanCommunity/cancancan"

gem "ed25519", github: "RubyCrypto/ed25519"
gem "x25519", github: "RubyCrypto/x25519"

gem "aws-sdk-s3"

gem "execjs", github: "rails/execjs"
gem "libv8"
gem "therubyrhino"
gem "mini_racer"

gem "jquery-rails", github: "rails/jquery-rails"
gem "jquery-ui-rails", github: "jquery-ui-rails/jquery-ui-rails"

gem "popper_js", github: "glebm/popper_js-rubygem"

gem "bootstrap", github: "twbs/bootstrap-rubygem"
gem "bootstrap_form", github: "bootstrap-ruby/bootstrap_form"

gem "crass", github: "rgrove/crass"
gem "loofah", github: "flavorjones/loofah"
gem "rails-html-sanitizer", github: "rails/rails-html-sanitizer"

gem "irb"
gem "io-console"

gem "net-protocol", github: "ruby/net-protocol"
gem "net-smtp", github: "ruby/net-smtp"
gem "net-imap", github: "ruby/net-imap"
gem "net-pop", github: "ruby/net-pop"
gem "mail"

gem "mini_magick", github: "minimagick/minimagick"

gem "devise", github: "heartcombo/devise"
gem "devise-encryptable", github: "heartcombo/devise-encryptable"
gem "responders", github: "heartcombo/responders"
