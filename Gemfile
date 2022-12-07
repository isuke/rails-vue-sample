source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

gem "rails", "~> 7.0.4"
gem "puma", "~> 5.0"

#
# Database
#
gem "sqlite3", "~> 1.4"

#
# View
#
gem "jbuilder"

#
# Other
#
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "webdrivers", require: false
end
