require 'pangram'

describe Pangram do
  it 'refutes an empty string' do
    str = Pangram.new('')
    expect( str.is_pangram? ).to be false
  end

  it 'has an alphabet constant' do
    alphabet = ('a'..'z').to_a
    expect( Pangram::ALPHABET ).to eq alphabet
  end

  it 'tests a pangram with only lower case letters' do
    str = Pangram.new('the quick brown fox jumps over the lazy dog')
    expect( str.is_pangram? ).to eq true
  end

  it 'tests if a string with missing characters is a pangram' do
    str = Pangram.new('the quick brown fish jumps over the lazy dog')
    expect( str.is_pangram? ).to eq false
  end

  it 'tests if a pangram with underscores' do
    str = Pangram.new('the_quick_brown_fox_jumps_over_the_lazy_dog')
    expect( str.is_pangram? ).to eq true
  end

  it 'tests a pangram with numbers' do
    str = Pangram.new('the 1 quick brown fox jumps over the 2 lazy dogs')
    expect( str.is_pangram? ).to eq true
  end

  it 'tests a pangram with mixed case and punctuation' do
    str = Pangram.new('"Five quacking Zephyrs jolt my wax bed."')
    expect( str.is_pangram? ).to eq true
  end

  it 'tests a pangram with non ascii characters' do
    str = Pangram.new('Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich.')
    expect( str.is_pangram? ).to eq true
  end
end
