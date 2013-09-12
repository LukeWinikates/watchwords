module Watchwords
  class CLI
    def self.run(opts)
      words = Words.new opts.slice(:good, :bad)
      counts = Counter.count(opts)
      Report.new(counts: counts, words: words)
    end
  end
end

class Hash
  def slice(*args)
    args.inject({}) do |acc, k|
      self[k] && acc[k] = self[k]
      acc
    end
  end
end
