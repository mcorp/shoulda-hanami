class WithValidationLengthModel
  include Lotus::Validations

  attribute :name_equal_10,     size: 10
  attribute :name_between_1_10, size: 1..10
end
