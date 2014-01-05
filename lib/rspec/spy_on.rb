require 'rspec/core'
require 'rspec/mocks'

RSpec::configure do |c|
  c.backtrace_exclusion_patterns << /lib\/rspec\/spy_on/
end

require 'rspec/spy_on/version'
require 'rspec/spy_on/example_methods'
