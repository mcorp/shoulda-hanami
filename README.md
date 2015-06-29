# shoulda-lotus [![Build Status](https://travis-ci.org/mcorp/shoulda-lotus.svg?branch=master)](https://travis-ci.org/mcorp/shoulda-lotus) [![Dependency Status](https://gemnasium.com/mcorp/shoulda-lotus.svg)](https://gemnasium.com/mcorp/shoulda-lotus)

Making tests easy on the fingers and eyes, but to lotus.

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

  attribute :email, format: /@/
end
```

### Spec
```ruby
it { is_expected.to allow_value("leo@nospam.org").for(:email) }
it { is_expected.to_not allow_value('leo-at-nospam.org').for(:email) }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mcorp/shoulda-lotus.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

