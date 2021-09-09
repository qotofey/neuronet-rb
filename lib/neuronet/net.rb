# frozen_string_literal: true

require_relative 'base'

module Neuronet
  class Net < Base
    attr_reader :inputs_count, :outputs_count, :layers_count, :layers

    def initialize(inputs_count, outputs_count, layers_count = 1)
      super(inputs_count, outputs_count)
      @layers_count = layers_count
      build_layers
    end

    def predict(inputs); end

    # Метод предназначен для обучения существующей ИНС
    def learn(training_sample, epochs = 100, _bias = 0, _acceptable_error = 0.3, _learning_rate = 0.00125)
      return unless training_sample.is_a?(Array)
      return if training_sample.empty?
      return if epochs < 1

      nil
    end

    private

    def learn_iter(inputs, expected); end

    def build_layers
      @layers = Array.new(@layers_count)
      (@layers_count - 1).times do |i|
        @layers[i] = Layer.new(@inputs_count, @inputs_count)
      end

      @layers[-1] = Layer.new(@inputs_count, @outputs_count)
      @layers
    end
  end
end
