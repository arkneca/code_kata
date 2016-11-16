require 'odd_even'
require 'prime'

describe OddEven do
  it "should print numbers from 1 to 10" do
    expect(OddEven.print(10, false)).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  # it "should print 'Even' if the number is even" do
  #   expect(OddEven.print(10, even: true, odd: false, prime: false)).to eq [1, 'Even', 3, 'Even', 5, 'Even', 7, 'Even', 9, 'Even']
  # end

  # it "should print 'Odd' if the number is odd" do
  #   expect(OddEven.print(10)).to eq ['Odd', 'Even', 'Odd', 'Even', 'Odd', 'Even', 'Odd', 'Even', 'Odd', 'Even']
  # end

  it "should print 'Prime' if the number is prime" do
    expect(OddEven.print(10)).to eq ['Odd', 'Prime', 'Prime', 'Even', 'Prime', 'Even', 'Prime', 'Even', 'Odd', 'Even']
  end

  it "should accept any number of range" do
    expect(OddEven.print(200, false)).to eq (1..200).to_a
  end
end
