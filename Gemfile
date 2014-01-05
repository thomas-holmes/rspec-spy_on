source 'https://rubygems.org'

# Specify your gem's dependencies in rspec-spy_on.gemspec
gemspec

group :documentation do
  gem 'yard',           '0.8.7.3', :require => false
  gem 'redcarpet',      '2.3.0'
  gem 'github-markup',  '1.0.0'
end

case version = ENV['RSPEC_VERSION']
when nil, false, ''
  gem 'rspec', '3.0.0.beta1'
else
  gem 'rspec', version
end

# mime-types 2 is not compatible on ruby 1.8 so an old version is specified.
gem 'mime-types', '~> 1.0'
