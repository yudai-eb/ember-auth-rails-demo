source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.0'

gem 'rails'

gem 'pg'
gem 'bcrypt-ruby'
gem 'devise', '>= 3.0', '< 3.1'
gem 'pundit'

gem 'unicorn'

gem 'jquery-rails'
gem 'coffee-rails'
gem 'sass-rails'
gem 'uglifier'

=begin
# for rails views
gem 'haml-rails'
gem 'simple_form'
gem 'html5_validators'
gem 'kaminari'

# OAuth
gem 'omniauth'
gem 'figaro'
=end

gem 'active_model_serializers', '~> 0.7'

gem 'ember-rails', '~> 0.13'
gem 'ember-data-source', '>= 1.0.0.beta.3', '< 2.0' # ember-data not yet out of beta
gem 'emblem-rails', '~> 0.1' # easier to write templates

gem 'ember-auth-rails', '~> 5.0'
gem 'ember-auth-request-jquery-rails', '~> 1.0' # auth requests via jQuery.ajax
gem 'ember-auth-request-jquery-source', '~> 1.0'
gem 'ember-auth-response-json-rails', '~> 1.0' # responses in json
gem 'ember-auth-strategy-token-rails', '~> 1.0' # token authentication
gem 'ember-auth-session-cookie-rails', '~> 1.0' # use cookies
gem 'ember-auth-module-ember_data-rails', '~> 1.0' # ember-data integration
gem 'ember-auth-module-auth_redirectable-rails', '~> 1.0' # auth-only routes
gem 'ember-auth-module-action_redirectable-rails', '~> 1.0' # post- sign in/out redirect
gem 'ember-auth-module-rememberable-rails', '~> 1.0' # remember me

group :test, :development do
  gem 'rspec-rails'
  gem 'rake_shared_context'

  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'growl'

  gem 'awesome_print'
  gem 'pry-rails'
  gem 'pry-coolline'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'pry-remote'
  gem 'tapp'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem "annotate", github: "ctran/annotate_models"

  gem 'hirb'
  gem 'hirb-unicode'

  gem 'rack-mini-profiler'
  gem 'colorize_unpermitted_parameters'
  gem 'timecop'

  gem 'database_cleaner', '~> 1.0'
  gem 'database_rewinder'
  gem 'fabrication', '~> 2.6' # model stubber
  gem 'shoulda', '~> 3.3' # model spec tester
end

group :production do
  gem 'newrelic_rpm'
end

gem 'quiet_assets'
gem 'rails-flog'
gem 'airbrake'
gem 'hashie'

