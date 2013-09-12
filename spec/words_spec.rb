require 'spec_helper'

module Watchwords
  describe Words do
    it "has a list of bad words and a list of good words" do
      words = Words.new good: ["happy", "green", "clouds"], bad: ["angry", "cold", "jerks"]
      expect(words.good).to eq(["happy", "green", "clouds"])
      expect(words.bad).to eq(["angry", "cold", "jerks"])
    end

    context "when no good words are provided" do
      it "uses the empty array" do
        Words.new({}).good.should == []
      end
    end

    context "when no bad words are provided" do
      it "uses the empty array" do
        Words.new({}).bad.should == []
      end
    end
  end
end
