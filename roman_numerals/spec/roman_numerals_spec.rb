require 'roman_numerals'

describe RomanNumerals do
  it "should be able to convert 1 to I" do
    expect(RomanNumerals.convert(1)).to eq("I")
  end
end
