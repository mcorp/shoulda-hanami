require 'spec_helper'

RSpec.describe Shoulda::Lotus::Matchers::ValidateLengthOfMatcher do
  include Shoulda::Lotus::Matchers

  it '#description' do
    matcher = validate_length_of(:bar).is_at_least(1).is_at_most(10)

    expect(matcher.description).to eq "'bar' size between '1..10'"
  end

  context 'an attribute with a validation' do
    let(:model) { WithValidationLengthModel.new }

    it 'accepts an exact' do
      expect(model).to validate_length_of(:name_equal_10).is_equal_to(10)
    end

    it 'accepts an interval' do
      expect(model).to validate_length_of(:name_between_1_10).is_at_least(1).is_at_most(10)
    end

    it 'provides correct failure message'
  end

  context 'an attribute without validation' do
    let(:model) { WithoutValidationModel.new }

    it 'does not validate' do
      expect(model).to_not validate_length_of(:email)
    end

    it 'provides correct failure message'
  end
end
