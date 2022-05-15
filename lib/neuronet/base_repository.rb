module Neuronet
  class BaseRepository
    def initialize
      @collection = []
    end

    def add(entity)
      @collection << entity
    end

    def update(entity)
    end

    def find(id)

    end

    def all
      @collection
    end
  end
end