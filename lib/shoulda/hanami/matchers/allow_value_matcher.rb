module Shoulda
  module Hanami
    module Matchers
      def allow_value(value)
        AllowValueMatcher.new(value)
      end

      class AllowValueMatcher
        def initialize(value)
          @value = value
        end

        def matches?(target)
          !Matcher.new(target.class.new(@attribute => @value), @attribute, :format).matches?
        end

        def description
          "allow '#{@value}' to be set to '#{@attribute}'"
        end

        def failure_message
          "'#{@value}' is an invalid format for '#{@attribute}'"
        end

        def failure_message_when_negated
          "'#{@value}' is a valid format for '#{@attribute}'"
        end

        def for(attribute)
          @attribute = attribute
          self
        end
      end
    end
  end
end
