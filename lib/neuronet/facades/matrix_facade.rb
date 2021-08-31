# frozen_string_literal: true

module Neuronet::Facades::MatrixFacade
  class << self
    def generate_matrix(rows_count, cols_count)
      Matrix.build(rows_count, cols_count) { rand(-1.0..1.0) }
    end

    def mult(first_matrix, second_matrix)
      first_matrix * second_matrix
    end
  end
end
