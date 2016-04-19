source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

ruby versions['ruby']

gem 'github-pages', group: :jekyll_plugins
gem 'jekyll-avatar'

group :test, :development do
  # gem 'codeclimate-test-reporter', require: nil
  gem 'html-proofer'
  gem 'rake'
  gem 'pry'
  gem 'rubocop', :branch => :master, :github => 'bbatsov/rubocop'
end
