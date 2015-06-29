require 'lotus/validations'

class Person
  include Lotus::Validations

  attribute :email, format: /@/
end
