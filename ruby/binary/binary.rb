class Binary
  VERSION = 1
  attr_reader :string
  def initialize(string)
    raise ArgumentError.new("Value not a valid binary number") if !(string =~ /\b[01]+\b/)
    @string = string
  end

  def to_decimal
    numbers = string.reverse.chars.map.with_index { |s, i| s.to_i*(2**i)}
    numbers.reduce(:+)
  end
end
