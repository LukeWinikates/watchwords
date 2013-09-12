require 'spec_helper'

module Watchwords
  describe CLI do
    describe ".run" do
      let(:opts) do
        {
          good: ['taco', 'burrito', 'sandwich'],
          bad: ['coyote', 'triad', 'Module']
        }
      end

      before do
        allow(Counter).to receive(:count) do
          Count.parse fixtures('fake_count.txt')
        end

        allow(Kernel).to receive(:puts)
      end

      it "generates a report based on the counter's output and the good/bad/ignore list" do
        report = CLI.run opts

        report.good.should == [
          { token: 'taco', freq: 50},
          { token: 'burrito', freq: 97},
          { token: 'sandwich', freq: 11}
        ]

        report.bad.should == [
          { token: 'triad', freq: 897},
          { token: 'Module', freq: 740}
        ]
      end
    end
  end
end
