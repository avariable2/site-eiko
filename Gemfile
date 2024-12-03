source "https://rubygems.org"

# Spécifiez la version de Ruby supportée par Heroku
ruby '3.2.3'

# Gemmes pour GitHub Pages
require 'json'
require 'net/http'
versions = JSON.parse(Net::HTTP.get(URI('https://pages.github.com/versions.json')))

gem "github-pages", versions['github-pages'], group: :jekyll_plugins

# Gemmes supplémentaires pour Jekyll
group :jekyll_plugins do
  gem "jekyll-feed"
  gem 'jekyll-sitemap'
  gem 'jekyll-seo-tag'
  gem 'octopress-minify-html'
  gem 'amp-jekyll'
end

# Gemme pour les données de fuseau horaire sur Windows
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# **Ajoutez la gemme `rack`**
gem 'rack'

# Optionnel : gemme pour servir des fichiers statiques avec Rack
gem 'rack-contrib'

# Optionnel : gemme Jekyll si nécessaire
gem 'jekyll'
