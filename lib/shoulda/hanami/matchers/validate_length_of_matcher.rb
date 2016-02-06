module Shoulda
  module Hanami
    module Matchers
      def validate_length_of(attribute)
        ValidateLengthOfMatcher.new(attribute)
      end

      class ValidateLengthOfMatcher
        def initialize(attribute)
          @attribute = attribute
        end

        def matches?(target)
          errors = []

          target.send("#{@attribute}=", '*' * (minimum - 1))
          errors << Matcher.new(target, @attribute, :size).matches?

          target.send("#{@attribute}=", '*' * (maximum + 1))
          errors << Matcher.new(target, @attribute, :size).matches?

          errors.all? { |error| error }
        end

        def description
          "'#{@attribute}' size between '#{@minimum}..#{@maximum}'"
        end

        def failure_message
          "'#{@attribute}' is not between '#{@minimum}..#{@maximum}'"
        end

        def failure_message_when_negated
          "'#{@attribute}' is between '#{@minimum}..#{@maximum}'"
        end

        def is_at_least(minimum)
          @minimum = minimum
          self
        end

        def is_at_most(maximum)
          @maximum = maximum
          self
        end

        def is_equal_to(limit)
          @minimum, @maximum = limit
          self
        end

        private

        def minimum
          @minimum ||= 1
        end

        def maximum
          @maximum ||= 1
        end
      end
    end
  end
end
