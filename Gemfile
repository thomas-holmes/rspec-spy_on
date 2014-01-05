source 'https://rubygems.org'

# Specify your gem's dependencies in rspec-spy_on.gemspec
gemspec

case version = ENV['RSPEC_VERSION']
when nil, false, ''
  gem 'rspec', '3.0.0.beta1'
else
  gem 'rspec', version
end
