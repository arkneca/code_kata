require 'string_calculator'

describe Calculator do
  let(:calculator) {  Calculator.new }

  it "returns 0 for an empty string" do
    result = calculator.calculate("")

    expect(result).to eq 0
  end

  it "returns 1 for a string containing 1" do
    result = calculator.calculate("1")

    expect(result).to eq 1
  end

  it "returns the sum of the numbers for '1,2'" do
    result = calculator.calculate("1,2")

    expect(result).to eq 3
  end

  it 'can add unknown amount of numbers' do
    result = calculator.calculate("1,2,3,4")

    expect(result).to eq 10
  end

  it 'allows new line also as a delimiter' do
    result = calculator.calculate("1\n2,3")

    expect(result).to eq 6
  end

  specify { expect { calculator.calculate("1, -1")  }.to raise_exception('negatives not allowed') }
end
