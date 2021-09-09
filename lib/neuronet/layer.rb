# frozen_string_literal: true

require_relative 'base'
require 'matrix'

module Neuronet
  #
  # Класс +Layer+ реализует логику скрытого слоя.
  #
  class Layer < Base
    attr_accessor :weights, :outputs, :old_outputs
    attr_reader :inputs_count, :outputs_count

    def initialize(inputs_count, outputs_count)
      super(inputs_count, outputs_count)
      @weights = generate_weights_matrix(inputs_count, outputs_count)
    end

    def predict(inputs)
      @old_outputs = @outputs.clone
      @outputs = Neuronet::Facades::Matrix.mult(inputs * weights)
    end

    protected

    #
    # Создаёт матрицу весов размером +inputs_count+ на +outputs_count+,
    # где +inputs_count+ - это количество строк матрицы,
    # а +outputs_count+ - это количество столбцов матрицы.
    # Каждому весу присваивается случайное действительное число.
    #
    def generate_weights_matrix(inputs_count, outputs_count)
      Neuronet::Facades::Matrix.generate_matrix(inputs_count, outputs_count)
    end
  end
end
