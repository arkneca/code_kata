class FizzBuzz
  def initialize
    @numbers = (1..100).to_a
  end

  def sequence
    @numbers.collect do |x|
      if multiple_of(3, x) && multiple_of(5, x)
        'FizzBuzz'
      elsif multiple_of(3, x)
        'Fizz'
      elsif multiple_of(5, x)
        'Buzz'
      else
        x
      end
    end
  end

  def output
    sequence.each do |element|
      puts element
    end
  end

  private

  def multiple_of(n, x)
    x.modulo(n).zero?
  end
end
