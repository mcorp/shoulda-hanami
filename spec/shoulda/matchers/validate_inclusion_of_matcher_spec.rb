require 'spec_helper'

RSpec.describe Shoulda::Lotus::Matchers::ValidateInclusionOfMatcher do
  include Shoulda::Lotus::Matchers

  it '#description' do
    matcher = validate_inclusion_of(:bar).in_array(%i(beer whisky))

    expect(matcher.description).to eq "inclusion only '[:beer, :whisky]' values on 'bar'"
  end

  context 'an attribute with a validation' do
    let(:model) { WithValidationInclusionModel.new }

    it 'accepts' do
      expect(model).to validate_inclusion_of(:state).in_array(%w(PR SC SP))
    end

    it 'provides correct failure message'
  end

  context 'an attribute without validation' do
    let(:model) { WithoutValidationModel.new }

    it 'does not validate' do
      expect(model).to_not validate_inclusion_of(:email).in_array(%w(PR SC SP))
    end

    it 'provides correct failure message'
  end
end
