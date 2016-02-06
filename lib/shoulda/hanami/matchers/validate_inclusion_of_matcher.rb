module Shoulda
  module Hanami
    module Matchers
      def validate_inclusion_of(attribute)
        ValidateInclusionOfMatcher.new(attribute)
      end

      class ValidateInclusionOfMatcher
        def initialize(attribute)
          @attribute = attribute
        end

        def matches?(target)
          value = nil

          loop do
            value = SecureRandom.hex
            break unless @values.include? value
          end

          target.send("#{@attribute}=", value)
          Matcher.new(target, @attribute, :inclusion).matches?
        end

        def description
          "inclusion only '#{@values.inspect}' values on '#{@attribute}'"
        end

        def failure_message
          "'#{@attribute}' is include only '#{@values.inspect}'"
        end

        def failure_message_when_negated
          "'#{@attribute}' is not include only '#{@values.inspect}'"
        end

        def in_array(values)
          @values = values
          self
        end
      end
    end
  end
end
