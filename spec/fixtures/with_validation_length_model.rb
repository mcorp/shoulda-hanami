class WithValidationLengthModel
  include Hanami::Validations

  validations do
    optional(:name_equal_10).filled(size?: 10)
    optional(:name_between_2_10).filled(size?: 2..10)
  end
end
