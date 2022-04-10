module Neuronet
  class Configuration
    attr_accessor :inputs_count, :outputs_count, :type_activation_function, :type_network

    def initialize
      @inputs_count = 0
      @outputs_count = 0
      @type_activation_function = :void   # [:bipolar, :sigmoid, :relu]
      @type_network = :perceptron         # [:recurrent, :convolutional]
    end
  end
end
