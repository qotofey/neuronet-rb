# frozen_string_literal: true

require_relative 'base'
require 'matrix'

module Neuronet
  class Layer < Base
    attr_accessor :weights, :outputs, :old_outputs
    attr_reader :inputs_count, :outputs_count

    def initialize(inputs_count, outputs_count)
      super(inputs_count, outputs_count)
      @weights = generate_weights_matrix(inputs_count, outputs_count)
    end

    def predict(inputs)
      @old_outputs = @outputs.clone
      @outputs = Neuronet::Facades::Matrix.mult(inputs * self.weights)
    end

    protected

    def generate_weights_matrix(inputs_count, outputs_count)
      Neuronet::Facades::Matrix.generate_matrix(inputs_count, outputs_count)
    end
  end
end
