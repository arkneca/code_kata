class Erastostenes
  def initialize(n)
    @n = n
    @list = number_list
  end

  def calculate
    list = number_list
    list.each do |x|
      cross_out_multiples_of(x) unless x >= Math.sqrt(@n)
    end
    @list
  end

  private

  def cross_out_multiples_of(number)
    @list.reject! do |x|
      (x % number).zero? unless x == number
    end
  end

  def number_list
    (2..@n).to_a
  end
end
