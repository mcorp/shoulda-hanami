class WithValidationInclusionModel
  include Hanami::Validations

  attribute :state, inclusion: %w(PR SC SP)
end
