# frozen_string_literal: true

RSpec.describe Neuronet::Layer do
  subject(:instance) { described_class.new(inputs_size, outputs_size) } 
  
  let(:inputs_size) { 3 }
  let(:outputs_size) { 4 }

  it { byebug }

  describe '#predict' do

  end

  describe '#learn' do

  end
end
