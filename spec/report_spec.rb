require 'spec_helper'

module Watchwords
  describe Report do
    let(:words) do
      Words.new({
        good: ["lactobacillus"],
        bad: ["botulism"],
        ignore: ["ape"]
      })
    end

    let(:counts) do
      Count.parse fixtures('fake_count.txt')
    end

    subject do
      Report.new(words: words, counts: counts)
    end

    it {should respond_to(:good)}
    it {should respond_to(:bad)}
    it {should respond_to(:top)}
  end
end
