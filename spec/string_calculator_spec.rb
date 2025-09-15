# spec/string_calculator_spec.rb
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calc) { described_class.new }

  it { expect(calc.add("")).to eq 0 }

  it { expect(calc.add("1")).to eq 1 }

  it { expect(calc.add("1,5")).to eq 6 }

  it { expect(calc.add("1,2,3,4")).to eq 10 }

  it { expect(calc.add("1\n2,3")).to eq 6 }

end
