class WithValidationFormatModel
  include Lotus::Validations

  attribute :email, format: /@/
end
