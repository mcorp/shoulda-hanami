class WithValidationFormatModel
  include Hanami::Validations

  validations do
    optional(:email) { format?(/@/) }
  end
end
