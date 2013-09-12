module Watchwords
  class Counter
    def self.count(opts)
      dir = opts[:dir] || '.'
      glob = opts[:glob] || '*.*'
      raw_counts = `find #{dir} -name "#{glob}" -print0 | xargs -0 cat | tr '[:punct:]' ' ' | tr ' ' '\n' |sort | uniq -c | sort -rn`
      Count.parse raw_counts
    end
  end
end
