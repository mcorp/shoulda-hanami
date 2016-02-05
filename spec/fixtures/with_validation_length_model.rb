class WithValidationLengthModel
  include Lotus::Validations

  attribute :name_equal_10,     size: 10
  attribute :name_between_2_10, size: 2..10
end
