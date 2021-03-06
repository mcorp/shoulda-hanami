module Shoulda
  module Hanami
    module Matchers
      def validate_presence_of(attribute)
        ValidatePresenceOfMatcher.new(attribute)
      end

      class ValidatePresenceOfMatcher
        def initialize(attribute)
          @attribute = attribute
        end

        def matches?(target)
          Matcher.new(target.class.new(@attribute => nil), @attribute, :presence).matches?
        end

        def description
          "require '#{@attribute}' to be set"
        end

        def failure_message
          "'#{@attribute}' is a required attribute"
        end

        def failure_message_when_negated
          "'#{@attribute}' is not a required attribute"
        end
      end
    end
  end
end
