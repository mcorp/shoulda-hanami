class WithValidationPresenceModel
  include Hanami::Validations

  validations do
    required(:email).filled
  end
end
