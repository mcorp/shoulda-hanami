module Shoulda
  module Lotus
    module Matchers
      def coerce_attribute(attribute)
        CoerceAttributeMatcher.new(attribute)
      end

      class CoerceAttributeMatcher
        TYPES = {
          'Array'      => [1, [1]],
          'BigDecimal' => ['x', nil],
          'Boolean'    => ['0303', false],
          'Date'       => [false, nil],
          'DateTime'   => ['x', nil],
          'Float'      => ['x', nil],
          'Hash'       => ['ç', nil],
          'Integer'    => ['x', nil],
          'Pathname'   => [true, nil],
          'Set'        => [nil, Set.new],
          'String'     => [1, '1'],
          'Symbol'     => [Hash.new, nil],
          'Time'       => ['uy', nil],
        }

        def initialize(attribute)
          @attribute = attribute
        end

        def matches?(target)
          target.send("#{@attribute}=", TYPES[@type.to_s].first)
          target.send(@attribute) == TYPES[@type.to_s].last
        end

        def description
          "coerce '#{@attribute}' to '#{@type}'"
        end

        def failure_message
          "does coerce '#{@attribute}' to '#{@type}'"
        end

        def failure_message_when_negated
          "does not coerce '#{@attribute}' to '#{@type}'"
        end

        def to(type)
          @type = type
          self
        end
      end
    end
  end
end
