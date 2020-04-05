# frozen_string_literal: true

RSpec.describe ArticlesSerializer, type: :serializer do
  let!(:articles) { create(:article) }
  let(:serialization) { ArticlesSerializer.new(articles) }
  subject { JSON.parse(serialization.to_json) }

  it 'contains id, title, lead, image, category,location and premium' do
    expected_keys = %w[id title lead category image premium location_id]
    expect(subject.keys).to match expected_keys
  end
end