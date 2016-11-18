require 'leap_year'

describe Year do
  it 'checks if a standard and even year is a leap year' do
    expect( Year.leap?(1996) ).to be true
  end

  it 'checks if a standard and odd year is a leap' do
    expect( Year.leap?(1997) ).to be false
  end

  it 'checks if 1900 is leap year' do
    expect( Year.leap?(1900) ).to be false
  end

  it 'checks if 1800 is a leap year' do
    expect( Year.leap?(1800) ).to be false
  end

  it 'checks if 2400 is a leap year' do
    expect( Year.leap?(2400) ).to be true
  end
end
