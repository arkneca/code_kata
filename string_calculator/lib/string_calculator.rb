class Calculator
  def calculate(input)
    determine_delimiter_and_input(input)
    standardize_delimiter
    if @string.include?(',')
      numbers = convert_string_to_integers
      raise 'negatives not allowed' if any_negative?(numbers)
      calculate_sum(numbers)
    else
      @string.to_i
    end
  end

  private

  def determine_delimiter_and_input(input)
    if input.start_with?('//')
      @delimiter = input[2]
      @string = input[4, input.length - 1]
    else
      @delimiter = "\n"
      @string = input
    end
  end

  def standardize_delimiter
    @string.gsub!(@delimiter, ',')
  end

  def convert_string_to_integers
    strings = @string.split(',')
    strings.map!(&:to_i)
  end

  def any_negative?(numbers)
    numbers.any? { |x| x < 0 }
  end

  def calculate_sum(numbers)
    numbers.inject(:+)
  end
end
