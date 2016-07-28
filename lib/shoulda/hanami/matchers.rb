require 'shoulda/hanami/matchers/allow_value_matcher'
require 'shoulda/hanami/matchers/validate_inclusion_of_matcher'
require 'shoulda/hanami/matchers/validate_length_of_matcher'
require 'shoulda/hanami/matchers/validate_presence_of_matcher'

module Shoulda
  module Hanami
    module Matchers
      class Matcher
        ERRORS = {
          format:    'is in invalid format',
          inclusion: 'must be one of:',
          size:      'length must be',
          presence:  'must be filled'
        }

        def initialize(target, attribute, validation)
          @target     = target
          @attribute  = attribute
          @validation = validation
        end

        def matches?
          result = @target.validate
          result.failure? &&
            result.messages.fetch(@attribute).select { |msg| msg.include?(ERRORS[@validation]) }.size > 0
        end
      end
    end
  end
end
