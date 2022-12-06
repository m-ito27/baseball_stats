require "baseball_stats/calculator"

RSpec.describe BaseballStats::Calculator do
  it "OPSは小数点3桁で返す" do
    expect(BaseballStats::Calculator.ops(0.3, 0.1)).to eql("0.400")
  end
end
