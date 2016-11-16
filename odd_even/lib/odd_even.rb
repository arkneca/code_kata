require 'prime'

# Print 'Odd', 'Even' or 'Prime' depending on the number
class OddEven
  def self.print(top_number, print_odd_even = true)
    range = (1..top_number).to_a
    return range if print_odd_even == false
    range.map do |number|
      if Prime.prime?(number)
        'Prime'
      elsif number.even?
        'Even'
      else
        'Odd'
      end
    end
  end
end
