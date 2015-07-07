# shoulda-lotus
[![Gem Version](https://badge.fury.io/rb/shoulda-lotus.svg)](http://badge.fury.io/rb/shoulda-lotus) [![Build Status](https://travis-ci.org/mcorp/shoulda-lotus.svg?branch=master)](https://travis-ci.org/mcorp/shoulda-lotus) [![Code Climate](https://codeclimate.com/github/mcorp/shoulda-lotus/badges/gpa.svg)](https://codeclimate.com/github/mcorp/shoulda-lotus) [![Test Coverage](https://codeclimate.com/github/mcorp/shoulda-lotus/badges/coverage.svg)](https://codeclimate.com/github/mcorp/shoulda-lotus/coverage) [![Dependency Status](https://gemnasium.com/mcorp/shoulda-lotus.svg)](https://gemnasium.com/mcorp/shoulda-lotus)

Making tests easy on the fingers and eyes, but on lotus.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shoulda-lotus'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shoulda-lotus

## Usage

### Entity

```ruby
class Person
  include Lotus::Validations

  attribute :email,      type: String, presence: true, format: /@/
  attribute :name,       type: String, size: 5..50
  attribute :password,   type: String, size: 10
  attribute :birthday,   type: Date
  attribute :created_at, type: DateTime
  attribute :state,      type: String,  inclusion: %w(PR SC SP)
  attribute :year,       type: Integer, inclusion: 1979..1990
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

# coerces
it { is_expected.to coerce_attribute(:email).to(String) }
it { is_expected.to coerce_attribute(:name).to(String) }
it { is_expected.to coerce_attribute(:password).to(String) }
it { is_expected.to coerce_attribute(:birthday).to(Date) }
it { is_expected.to coerce_attribute(:created_at).to(DateTime) }

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

