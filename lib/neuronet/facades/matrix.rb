# frozen_string_literal: true

#
# Класс +Neuronet::Facades::Matrix+ является фасадом, инкапусулирующим гем для матричных вывчислений.
# Таким гемом может быть как стандартный +Matrix+ так и +NMatrix+ из репозитория +SciRuby+.
#
module Neuronet::Facades::Matrix
  class << self
    def generate_matrix(rows_count, cols_count)
      Matrix.build(rows_count, cols_count) { rand(-1.0..1.0) }
    end

    def mult(first_matrix, second_matrix)
      first_matrix * second_matrix
    end

    def combine_mult(first_matrix, second_matrix)
      Matrix.combine(first_matrix, second_matrix) { |a, b| a * b }
    end

    def apply_func(matrix, func)
      matrix.map { |value| func.call(value) }
    end

    def elements_count(matrix)
      matrix.count
    end
  end
end
