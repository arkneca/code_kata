require 'reverse_integer'

describe ReverseInteger do
  it 'returns the same number for single digit number' do
    number = ReverseInteger.new(0)
    reversed_number = number.reverse
    expect(reversed_number).to eq 0
  end

  it 'returns the reversed number for a two digit number' do
    number = ReverseInteger.new(21)
    reversed_number = number.reverse
    expect(reversed_number).to eq 12
  end

  it 'return 123 for 321' do
    number = ReverseInteger.new(321)
    reversed_number = number.reverse
    expect(reversed_number).to eq 123
  end

  it 'returns 45678 for 87654' do
    number = ReverseInteger.new(87654)
    reversed_number = number.reverse
    expect(reversed_number).to eq(45678)
  end
end
