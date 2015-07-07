class WithValidationInclusionModel
  include Lotus::Validations

  attribute :state, inclusion: %w(PR SC SP)
end
