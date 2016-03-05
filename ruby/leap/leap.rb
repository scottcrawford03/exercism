class Year
  def self.leap?(year)
    fourth?(year) && (four_hundredth?(year) || one_hundredth?(year))
  end

  private

  def self.fourth?(year)
    year % 4 == 0
  end

  def self.four_hundredth?(year)
    year % 400 == 0
  end

  def self.one_hundredth?(year)
    year % 100 != 0
  end
end
