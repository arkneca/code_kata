class ReverseInteger
  def initialize(number)
    @number = number
  end

  def reverse
    reversed_integer = identify_rightmost_digit

    while digits_remain_to_be_reversed?
      remove_rightmost_digit
      reversed_integer = reversed_integer * 10 + identify_rightmost_digit
    end
    reversed_integer
  end

  private

  def identify_rightmost_digit
    @number % 10
  end

  def remove_rightmost_digit
    @number /= 10
  end

  def digits_remain_to_be_reversed?
    @number / 10 > 0
  end
end
