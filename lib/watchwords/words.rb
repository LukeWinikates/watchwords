module Watchwords
  class Words
    attr_accessor :good, :bad

    def initialize(opts)
      self.good = opts[:good]
      self.bad = opts[:bad]
    end
  end
end
