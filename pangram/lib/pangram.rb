class Pangram
  ALPHABET = ('a'..'z').to_a

  def initialize(string)
    @string = string
  end

  def is_pangram?
    return false if @string.empty?
    ALPHABET == sort_uniqe_letters
  end

  private

  def sort_uniqe_letters
    @string.downcase.scan(/[a-z]/).uniq.sort
  end
end
