# spec/string_calculator_spec.rb
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calc) { described_class.new }

  it { expect(calc.add("")).to eq 0 }

  it { expect(calc.add("1")).to eq 1 }

  it { expect(calc.add("1,5")).to eq 6 }

  it { expect(calc.add("1,2,3,4")).to eq 10 }

  it { expect(calc.add("1\n2,3")).to eq 6 }

  it { expect(calc.add("//;\n1;2")).to eq 3 }

  it "raises error for single negative" do
    expect { calc.add("-1,2") }.to raise_error("negative numbers not allowed -1")
  end

  it "raises error for multiple negatives" do
  	expect { calc.add("2,-4,3,-5") }.to raise_error("negative numbers not allowed -4,-5")
  end

end
