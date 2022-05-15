require 'securerandom'

module Neuronet
  class BaseEntity
    attr_accessor :uuid

    def initialize
      @uuid = SecureRandom.uuid
    end
  end
end