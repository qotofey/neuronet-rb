# frozen_string_literal: true

require 'base'
require 'matrix'

module Neuronet
  class Layer < Base
    attr_accessor :weights

    def initialize(inputs_count, outputs_count)
      super(inputs_count, outputs_count)
      @weights = generate_weights_matrix(inputs_count, outputs_count)
    end

    def inputs_count; end

    def outputs_count; end

    def predict; end

    protected

    def generate_weights_matrix(inputs_count, outputs_count)
      Matrix.build(inputs_count, outputs_count) { rand(-1.0..1.0) }
    end
  end
end
