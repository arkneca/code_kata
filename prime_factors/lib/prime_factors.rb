module PrimeFactors
  def self.of(n)
    factors, divisor = [], 1
    while n > 1 and divisor += 1
      factors << divisor and n /= divisor while (n % divisor).zero?
      divisor = n - 1 if divisor > Math.sqrt(n)
    end
    factors
  end
end
