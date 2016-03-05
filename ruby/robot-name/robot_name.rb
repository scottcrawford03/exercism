class Robot
  USED_NAMES = []
  attr_reader :name, :temp_name
  ALPHABET = ("A".."Z").to_a
  NUMBERS  = (1..9).to_a

  def initialize
    @name = generate_name
    @temp_name = temp_name
  end

  def reset
    @name = generate_name
  end

  private

  def generate_name
    @temp_name = (ALPHABET.sample(2) + NUMBERS.sample(3)).join
  end

  def save_name
    USED_NAMES << @temp_name unless USED_NAME.includes?(@temp_name)
  end
end
