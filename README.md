# shoulda-hanami
[![Gem Version](https://badge.fury.io/rb/shoulda-hanami.svg)](http://badge.fury.io/rb/shoulda-hanami) [![Build Status](https://travis-ci.org/mcorp/shoulda-hanami.svg?branch=master)](https://travis-ci.org/mcorp/shoulda-hanami) [![Code Climate](https://codeclimate.com/github/mcorp/shoulda-hanami/badges/gpa.svg)](https://codeclimate.com/github/mcorp/shoulda-hanami) [![Test Coverage](https://codeclimate.com/github/mcorp/shoulda-hanami/badges/coverage.svg)](https://codeclimate.com/github/mcorp/shoulda-hanami/coverage) [![Dependency Status](https://gemnasium.com/mcorp/shoulda-hanami.svg)](https://gemnasium.com/mcorp/shoulda-hanami) [![Inline docs](http://inch-ci.org/github/mcorp/shoulda-hanami.svg?branch=master)](http://inch-ci.org/github/mcorp/shoulda-hanami)

Making tests easy on the fingers and eyes, but on hanami.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shoulda-hanami'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shoulda-hanami

## Configure

Create file `spec/support/shoulda_hanami.rb` with:

```ruby
RSpec.configure do |config|
  config.include Shoulda::Hanami::Matchers
end

```

## Usage

### Entity

```ruby
class Person
  include Hanami::Validations

  validations do
    required(:email)    { format?(/@/) }
    required(:name)     { size?(5..50) }
    required(:password) { size?(10) }
    required(:state)    { included_in?(%w(PR SC SP)) }
    required(:year)     { included_in?(1979..1990) }
  end
end
```

### Spec

```ruby
# allow_value
it { is_expected.to allow_value("leo@nospam.org").for(:email) }
it { is_expected.to_not allow_value('leo-at-nospam.org').for(:email) }

# presence
it { is_expected.to validate_presence_of(:email) }

# size
it { is_expected.to validate_length_of(:name).is_at_least(5).is_at_most(50) }
it { is_expected.to validate_length_of(:password).is_equal_to(10) }

# inclusion
it { is_expected.to validate_inclusion_of(:state).in_array(%w(PR SC SP)) }
it { is_expected.to validate_inclusion_of(:year).in_array(1979..1990) }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
