module RSpec::SpyOn
  module ExampleMethods
    # Enables an RSpec::Mocks::TestDouble or any other object to act as
    # a test spy. Delegates to RSpec::Mocks to configure the allowing of
    # the messages
    #
    # In particular, `spy_on` makes this act of configuring real objects
    # as spies easier by providing more concise syntax for configuring
    # spying on multiple methods while forwarding the messages along
    # to the original implementations.
    #
    # @example
    #     person = Person.new("Ally", 22)
    #     spy_on(person, :name, :age)
    #     # use `person` in a test
    #     expect(person).to have_received(:name)
    #     expect(person).to have_received(:age)
    #
    # @param target [Object/RSpec::Mocks::TestDouble] The object to be spied on
    # @param messages [Array] Array of symbols for messages that should configured for spying
    # @return (target)
    def spy_on(target, *messages)
      if target.is_a?(RSpec::Mocks::TestDouble)
        messages.each { |m| RSpec::Mocks.allow_message(target, m) }
      else
        messages.each { |m| allow_partial(target, m) }
      end
      target
    end

    private
    # If a non RSpec::Mocks::TestDouble is to be a spy then it any messags
    # sent should be forwarded to the original object
    #
    # @private
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
