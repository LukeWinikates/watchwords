require 'rspec'
require 'approvals/rspec'
require 'watchwords'

module Watchwords
  module SpecHelpers
    def fixtures(path)
      File.read(File.join(File.dirname(__FILE__), 'fixtures', path))
    end
  end
end

RSpec.configure do |c|
  c.include Watchwords::SpecHelpers
end
