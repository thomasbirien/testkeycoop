source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.3'
gem 'pg', '~> 0.18'
gem 'awesome_print'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sidekiq'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :development do
  gem "letter_opener"
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
