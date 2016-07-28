class WithValidationTypeModel
  include Hanami::Validations

  validations do
    optional(:attr_array) { array? }
    optional(:attr_bigdecimal) { decimal? }
    optional(:attr_boolean) { bool? }
    optional(:attr_date) { date? }
    optional(:attr_datetime).filled(type?: DateTime)
    optional(:attr_float) { float? }
    optional(:attr_hash) { hash? }
    optional(:attr_integer) { int? }
    optional(:attr_pathname).filled(type?: Pathname)
    optional(:attr_set).filled(type?: Set)
    optional(:attr_string) { str? }
    optional(:attr_symbol).filled(type?: Symbol)
    optional(:attr_time) { time? }
  end
end
