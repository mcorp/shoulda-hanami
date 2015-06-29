require 'spec_helper'

RSpec.describe Shoulda::Lotus::Matchers::ValidatePresenceOfMatcher do
  include Shoulda::Lotus::Matchers

  it '#description' do
    matcher = validate_presence_of(:bar)

    expect(matcher.description).to eq "require 'bar' to be set"
  end

  context 'an attribute with a validation' do
    let(:model) { WithValidationPresenceModel.new }

    it 'accepts' do
      expect(model).to validate_presence_of(:email)
    end

    it 'provides correct failure message'
  end

  context 'an attribute without validation' do
    let(:model) { WithoutValidationModel.new }

    it 'does not validate' do
      expect(model).to_not validate_presence_of(:email)
    end

    it 'provides correct failure message'
  end
end
