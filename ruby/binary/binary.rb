class Binary
  VERSION = 1
  attr_reader :string
  def initialize(string)
    raise ArgumentError.new("Value not a valid binary number") unless string =~ /^[01]+$/
    @string = string
  end

  def to_decimal
    string.to_i(2)
  end
end
