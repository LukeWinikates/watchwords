module Watchwords
  class Report
    attr_accessor :good, :bad
    def initialize(opts)
      counts = opts.fetch(:counts)
      words = opts.fetch(:words)

      self.good = counts.select do |count|
        words.good.include? count[:token]
      end

      self.bad = counts.select do |count|
        words.bad.include? count[:token]
      end
    end
  end
end
