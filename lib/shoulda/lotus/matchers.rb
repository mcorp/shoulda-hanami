require 'shoulda/lotus/matchers/allow_value_matcher'
require 'shoulda/lotus/matchers/validate_length_of_matcher'
require 'shoulda/lotus/matchers/validate_presence_of_matcher'

module Shoulda
  module Lotus
    module Matchers
      class Matcher
        def initialize(target, attribute, validation)
          @target = target
          @attribute = attribute
          @validation = validation
        end

        def matches?
          @target.valid?
          @target.errors.for(@attribute).select { |error| error.attribute == @attribute.to_s && error.validation == @validation }.size > 0
        end
      end
    end
  end
end
