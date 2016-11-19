class FindPrime
  LOWER_BOUND = 2

  def initialize(n)
    @n = n
  end

  def prime?
    divisors_list.each do |e|
      remainder = @n % e
       return false if remainder == 0
    end
    return true
  end

  private

  def divisors_list
    (LOWER_BOUND..upper_factor).to_a
  end

  def upper_factor
    Math.sqrt(@n).ceil  
  end
end
