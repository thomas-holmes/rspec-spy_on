module RSpec::SpyOn
  module ExampleMethods
    def spy_on(target, *messages)
      if target.is_a?(RSpec::Mocks::TestDouble)
        messages.each { |m| RSpec::Mocks.allow_message(target, m) }
      else
        messages.each { |m| allow_partial(target, m) }
      end
    end

    def allow_partial(target, message)
      if target.respond_to?(message)
        RSpec::Mocks.allow_message(target, message).and_call_original
      else
        RSpec::Mocks.allow_message(target, message)
      end
    end
  end
end

RSpec.configuration.include RSpec::SpyOn::ExampleMethods
