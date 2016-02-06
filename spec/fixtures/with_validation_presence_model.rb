class WithValidationPresenceModel
  include Hanami::Validations

  attribute :email, presence: true
end
