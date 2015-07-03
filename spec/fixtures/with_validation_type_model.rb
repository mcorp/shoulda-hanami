class WithValidationTypeModel
  include Lotus::Validations

  attribute :attr_array,      type: Array
  attribute :attr_bigdecimal, type: BigDecimal
  attribute :attr_boolean,    type: Boolean
  attribute :attr_date,       type: Date
  attribute :attr_datetime,   type: DateTime
  attribute :attr_float,      type: Float
  attribute :attr_hash,       type: Hash
  attribute :attr_integer,    type: Integer
  attribute :attr_pathname,   type: Pathname
  attribute :attr_set,        type: Set
  attribute :attr_string,     type: String
  attribute :attr_symbol,     type: Symbol
  attribute :attr_time,       type: Time
end
