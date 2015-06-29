# shoulda-lotus [![Build Status](https://travis-ci.org/mcorp/shoulda-lotus.svg?branch=master)](https://travis-ci.org/mcorp/shoulda-lotus) [![Dependency Status](https://gemnasium.com/mcorp/shoulda-lotus.svg)](https://gemnasium.com/mcorp/shoulda-lotus)

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

  attribute :email, presence: true, format: /@/
end
```

### Spec
```ruby
it { is_expected.to allow_value("leo@nospam.org").for(:email) }
it { is_expected.to_not allow_value('leo-at-nospam.org').for(:email) }
it { is_expected.to validate_presence_of(:name) }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

