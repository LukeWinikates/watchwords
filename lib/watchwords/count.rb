module Watchwords
  class Count
    def self.parse(str)
      lines = str.split(/\n/)[1..-1]
      lines.map do |line|
        m = /(\d+)\s+(\w+)/.match line
        {freq: m.captures[0].to_i, token: m.captures[1]}
      end
    end
  end
end
