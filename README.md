# Rspec::SpyOn

RSpec::SpyOn allows easier setup of test spies through the use of the `spy_on` method

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-spy_on'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-spy_on

## Usage

Instead of doing the following:

    allow(dbl).to receive(:foo)
    allow(dbl).to receive(:bar)

    do_something_with(dbl)

    expect(dbl).to have_received(:foo)
    expect(dbl).to have_received(:bar)

You can instead do:

    spy_on(dbl, :foo, :bar)

    do_something_with(dbl)

    expect(dbl).to have_received(:foo)
    expect(dbl).to have_received(:bar)

Where this particularly comes in handy is when you need to spy with a real
instance of an object (what is known as a partial double).

When called on any ruby object that is not an `RSpec::Mocks::TestDouble` it
will automatically call `and_call_original` if the passed in object responds
to the desired message.
