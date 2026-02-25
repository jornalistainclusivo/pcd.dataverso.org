source 'https://rubygems.org'

gem 'jekyll', '~> 4.3'

group :jekyll_plugins do
  gem 'jekyll-archives'
  gem 'jekyll-feed'
  gem 'jekyll-paginate'
  gem 'jekyll-seo-tag'
  gem 'jekyll-sitemap'
end

# Essentials for Windows and Ruby 3.0+
gem 'webrick'
gem 'wdm', '>= 0.1.1' if Gem.win_platform?

# Correção para fusos horários no Windows
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test, :development do
  gem 'html-proofer', '~> 5.0'
end
