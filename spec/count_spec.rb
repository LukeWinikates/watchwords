require 'spec_helper'

module Watchwords
  describe Count do
    describe ".parse" do
      it "works" do
        verify do
          Count.parse(fixtures('fake_count.txt'))
        end
      end
    end
  end
end

