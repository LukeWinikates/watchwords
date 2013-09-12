module Watchwords
  class Count
    def self.pattern
      /(\d+)\s+(\w+)/
    end

    def self.parse(str)
      lines = str.split(/\n/)[1..-1]
      lines = lines.select {|l| pattern.match l}
      lines.map do |line|
        m = pattern.match line
        {freq: m.captures[0].to_i, token: m.captures[1]}
      end
    end
  end
end
