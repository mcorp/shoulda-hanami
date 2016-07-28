class WithValidationInclusionModel
  include Hanami::Validations

  validations do
    optional(:state).filled(inclusion?: %w(PR SC SP))
  end
end
