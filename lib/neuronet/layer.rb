require 'matrix'

class Neuronet::Layer
  attr_accessor :weights

  def initialize(inputs_count, outputs_count)
    @weights = generate_weights_matrix(inputs_count, outputs_count)
  end

  private

  def generate_weights_matrix(inputs_count, outputs_count)
    Matrix.build(inputs_count, outputs_count) { rand(-1.0..1.0) }
  end
end
