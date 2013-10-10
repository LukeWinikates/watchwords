require 'colorize'

module Watchwords
  class Report
    attr_accessor :good, :bad, :top
    def initialize(opts)
      counts = opts.fetch(:counts)
      words = opts.fetch(:words)

      self.good = counts.select do |count|
        words.good.include? count[:token]
      end

      self.bad = counts.select do |count|
        words.bad.include? count[:token]
      end

      self.top = counts.sort {|t1, t2| t2[:freq] <=> t1[:freq]}.take(50)
    end

    def to_s
      "bad: #{bad}\n".red +
      "good: #{good}\n".green +
      "top: #{top}"
    end
  end
end
