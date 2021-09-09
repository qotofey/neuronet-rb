RSpec.describe Neuronet::Layer do
  describe '#predict' do
    subject { described_class.new(2, 7) }

    it { expect(subject.weights.count).to eq(14) }
  end
end
