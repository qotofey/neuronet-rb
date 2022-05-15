# frozen_string_literal: true

RSpec.describe Neuronet::Layer do
  describe '#predict' do
    subject(:layer) { described_class.new(2, 7) }

    it { expect(layer.weights.count).to eq(14) }
  end
end
