# frozen_string_literal: true

require_relative 'neuronet/base'
require_relative 'neuronet/layer'

class Neuronet < Neuronet::Base
  attr_reader :inputs_count, :outputs_count, :layers_count

  def initialize(inputs_count, outputs_count, layers_count = 1)
    super(inputs_count, outputs_count)
    @layers_count = layers_count
  end

  def predict; end

  def learn; end
end
