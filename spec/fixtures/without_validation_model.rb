class WithoutValidationModel
  include Hanami::Validations

  validations do
    optional(:email)
  end
end
