require 'yaml'

module Watchwords
  class CLI
    def self.run(opts = self.load_opts)
      words = Words.new opts.slice(:good, :bad, 'good', 'bad')
      counts = Counter.count(opts.slice(:dir, :glob))
      report = Report.new(counts: counts, words: words)
      Kernel.puts report
      report
    end

    def self.load_opts
      file = File.join(Dir.pwd, 'watchwords.yml')
      yml = ::YAML::load File.read file
    end
  end
end

class Hash
  def slice(*args)
    args.inject({}) do |acc, k|
      self[k] && acc[k.to_sym] = self[k]
      acc
    end
  end
end
