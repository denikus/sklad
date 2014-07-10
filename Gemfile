source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails', '4.0.2'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
gem 'devise'
gem 'devise_invitable'
gem 'figaro'
gem 'foundation-rails'
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

