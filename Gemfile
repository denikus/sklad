source 'https://rubygems.org'

gem 'rails', '4.1.8'

gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'

gem 'devise'
gem 'devise_invitable'

gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'figaro'

# gem 'foundation-rails'

gem 'slim-rails'

#for parsing XML
gem 'nokogiri'

#for categories
gem 'ancestry'

gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
gem 'pry-byebug'


# Deploy with Capistrano
gem 'capistrano',  '~> 3.1'
gem 'capistrano-rails', '~> 1.1'
gem 'capistrano-rvm', github: 'capistrano/rvm'

gem 'rollbar'

gem 'font-awesome-sass', '= 4.2.0'

#nice and simple forms
gem 'simple_form'

# notifications
gem 'bootstrap-growl-rails'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false

  #show badd styles of ruby code
  gem 'rubocop', require: false

  #view emails instead of sending
  gem "letter_opener"
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'passenger'
  gem 'rspec-rails'
  gem 'awesome_print'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

group :production do
  #need this for js compiling
  gem 'execjs'
  gem 'therubyracer'
end


