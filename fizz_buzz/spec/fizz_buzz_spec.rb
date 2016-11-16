require 'fizz_buzz'

describe FizzBuzz do
  it 'should print Fizz if number is divisible by 3' do
    newgame = FizzBuzz.new
    result = newgame.sequence

    expect(result[2]).to eq('Fizz')
  end

  it 'should print Buzz if number is divisible 5' do
    newgame = FizzBuzz.new
    result = newgame.sequence

    expect(result[4]).to eq('Buzz')
  end

  it 'should print FizzBuzz if number is divisible both by 3 and 5' do
    game = FizzBuzz.new
    result = game.sequence

    expect(result[14]).to eq('FizzBuzz')
  end
end
