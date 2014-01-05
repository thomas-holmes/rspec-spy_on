require 'simplecov'
SimpleCov.start
if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
end

require 'rspec/spy_on'
