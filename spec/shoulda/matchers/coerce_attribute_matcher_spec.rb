require 'spec_helper'

RSpec.describe Shoulda::Lotus::Matchers::CoerceAttributeMatcher do
  include Shoulda::Lotus::Matchers

  it '#description' do
    matcher = coerce_attribute(:attr_string).to(String)

    expect(matcher.description).to eq "coerce 'attr_string' to 'String'"
  end

  context 'an attribute with a validation' do
    let(:model) { WithValidationTypeModel.new }

    it 'coerces to custom'

    it 'coerces to array' do
      expect(model).to coerce_attribute(:attr_array).to(Array)
    end

    it 'coerces to bigdecimal' do
      expect(model).to coerce_attribute(:attr_bigdecimal).to(BigDecimal)
    end

    it 'coerces to boolean' do
      expect(model).to coerce_attribute(:attr_boolean).to(Boolean)
    end

    it 'coerces to date' do
      expect(model).to coerce_attribute(:attr_date).to(Date)
    end

    it 'coerces to datetime' do
      expect(model).to coerce_attribute(:attr_datetime).to(DateTime)
    end

    it 'coerces to float' do
      expect(model).to coerce_attribute(:attr_float).to(Float)
    end

    it 'coerces to hash' do
      expect(model).to coerce_attribute(:attr_hash).to(Hash)
    end

    it 'coerces to integer' do
      expect(model).to coerce_attribute(:attr_integer).to(Integer)
    end

    it 'coerces to pathname' do
      expect(model).to coerce_attribute(:attr_pathname).to(Pathname)
    end

    it 'coerces to set' do
      expect(model).to coerce_attribute(:attr_set).to(Set)
    end

    it 'coerces to string' do
      expect(model).to coerce_attribute(:attr_string).to(String)
    end

    it 'coerces to symbol' do
      expect(model).to coerce_attribute(:attr_symbol).to(Symbol)
    end

    it 'coerces to time' do
      expect(model).to coerce_attribute(:attr_time).to(Time)
    end

    it 'provides correct failure message'
  end

  context 'an attribute without a validation' do
    let(:model) { WithoutValidationModel.new }

    it 'does not coerce to custom'

    it 'does not coerce to array' do
      expect(model).to_not coerce_attribute(:email).to(Array)
    end

    it 'does not coerce to bigdecimal' do
      expect(model).to_not coerce_attribute(:email).to(BigDecimal)
    end

    it 'does not coerce to boolean' do
      expect(model).to_not coerce_attribute(:email).to(Boolean)
    end

    it 'does not coerce to date' do
      expect(model).to_not coerce_attribute(:email).to(Date)
    end

    it 'does not coerce to datetime' do
      expect(model).to_not coerce_attribute(:email).to(DateTime)
    end

    it 'does not coerce to float' do
      expect(model).to_not coerce_attribute(:email).to(Float)
    end

    it 'does not coerce to hash' do
      expect(model).to_not coerce_attribute(:email).to(Hash)
    end

    it 'does not coerce to integer' do
      expect(model).to_not coerce_attribute(:email).to(Integer)
    end

    it 'does not coerce to pathname' do
      expect(model).to_not coerce_attribute(:email).to(Pathname)
    end

    it 'does not coerce to set' do
      expect(model).to_not coerce_attribute(:email).to(Set)
    end

    it 'does not coerce to string' do
      expect(model).to_not coerce_attribute(:email).to(String)
    end

    it 'does not coerce to symbol' do
      expect(model).to_not coerce_attribute(:email).to(Symbol)
    end

    it 'does not coerce to time' do
      expect(model).to_not coerce_attribute(:email).to(Time)
    end

    it 'provides correct failure message'
  end
end
