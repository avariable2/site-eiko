# frozen_string_literal: true

source "https://rubygems.org"


ruby "3.1.4"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
# gem "jekyll", "3.9.3"

# Gemmes pour GitHub Pages
require 'json'
require 'net/http'
versions = JSON.parse(Net::HTTP.get(URI('https://pages.github.com/versions.json')))

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
#gem "github-pages", versions['github-pages'], group: :jekyll_plugins

gem "rack"
gem "rackup"

# If you have any plugins, put them here!
#group :jekyll_plugins do
#   gem "jekyll-feed"
 #  gem 'jekyll-sitemap'
  # gem 'jekyll-seo-tag'
 #  gem 'octopress-minify-html'
 #  gem 'amp-jekyll'
#end

# Gemme pour les données de fuseau horaire sur Windows
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# **Ajoutez la gemme `rack`**
gem 'rack'

# Optionnel : gemme pour servir des fichiers statiques avec Rack
gem 'rack-contrib'

# Optionnel : gemme Jekyll si nécessaire
gem 'jekyll'
