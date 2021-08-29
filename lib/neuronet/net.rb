# frozen_string_literal: true

require_relative 'base'

module Neuronet
  class Net < Base
    attr_reader :inputs_count, :outputs_count, :layers_count

    def initialize(inputs_count, outputs_count, layers_count = 1)
      super(inputs_count, outputs_count)
      @layers_count = layers_count
    end

    def predict; end

    # Метод предназначен для обучения существующей ИНС
    def learn(training_sample, epochs, bias = 0, acceptable_error = 0.3, learning_rate = 0.00125); end

    private

    def learn_iter; end
  end
end
