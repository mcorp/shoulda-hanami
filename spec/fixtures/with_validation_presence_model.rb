class WithValidationPresenceModel
  include Lotus::Validations

  attribute :email, presence: true
end
