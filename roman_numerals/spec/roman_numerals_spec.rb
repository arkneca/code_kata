require 'roman_numerals'

describe RomanNumerals do
  it "should be able to convert 1 to I" do
    expect(RomanNumerals.convert(1)).to eq("I")
  end

  it "should be able to convert 5 to V" do
    expect(RomanNumerals.convert(5)).to eq("V")
  end

  it "should be able to convert 10 to X" do
    expect(RomanNumerals.convert(10)).to eq("X")
  end

  it "should be able to convert 35 to XXXV" do
    expect(RomanNumerals.convert(35)).to eq("XXXV")
  end

  it "should be able to convert 93 to XCIII" do
    expect(RomanNumerals.convert(93)).to eq("XCIII")
  end

  it "should be able to convert 141 to CXLI" do
    expect(RomanNumerals.convert(141)).to eq("CXLI")
  end

  it "should be able to convert 575 to DLXXV" do
    expect(RomanNumerals.convert(575)).to eq("DLXXV")
  end
  it "should be able to convert 911 to CMXI" do
    expect(RomanNumerals.convert(911)).to eq("CMXI")
  end
end
