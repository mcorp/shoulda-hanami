class WithValidationFormatModel
  include Hanami::Validations

  attribute :email, format: /@/
end
