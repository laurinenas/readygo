require "spec_helper"

module ReadyGo
  describe TimeFormatting do
    it "formats time as strings" do
      TimeFormatting.format_duration(50006).should == "50.006 s"
      TimeFormatting.format_duration(3.0).should == "3.000 ms"
      TimeFormatting.format_duration(0.040).should == "40.000 us"
      TimeFormatting.format_duration(0.000100).should == "100.000 ns"
      TimeFormatting.format_duration(0.000000009).should == "0.009 ns"
    end
  end
end
