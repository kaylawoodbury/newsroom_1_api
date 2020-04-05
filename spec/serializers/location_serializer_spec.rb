# frozen_string_literal: true

RSpec.describe LocationIndexSerializer, type: :serializer do
  let!(:location) { create(:location) }
  let(:serialization) { LocationIndexSerializer.new(location) }
  subject { JSON.parse(serialization.to_json) }

  it 'contains id, country, lat, long' do
    expected_keys = %w[id country lat long]
    expect(subject.keys).to match expected_keys
  end
end