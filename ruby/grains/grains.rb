class Grains
  def self.square(square_num)
    find_grains(square_num)
  end

  def self.total
    find_grains * 2 - 1 
  end

  private

  def self.find_grains(square_num = 64)
    (2..square_num).reduce(1) { |sum, square| sum * 2 }
  end
end
