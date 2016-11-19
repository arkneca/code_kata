require 'generate_prime_numbers'

describe FindPrime do

  it 'should return true given a number input of 37' do
    find_prime = FindPrime.new(37)

    is_prime = find_prime.prime?
    expect(is_prime).to eq true
  end
end
