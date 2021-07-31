# frozen_string_literal: true

module Neuronet
  class Base
    def initialize(inputs_count, outputs_count)
      @inputs_count = inputs_count
      @outputs_count = outputs_count
    end

    def inputs_count
      raise 'stub!'
    end

    def outputs_count
      raise 'stub!'
    end

    def predict
      raise 'stub!'
    end
  end
end
