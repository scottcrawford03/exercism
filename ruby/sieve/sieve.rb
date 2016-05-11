class Sieve
  attr_reader :numbers_range

  def initialize(top_of_range)
    @numbers_range = (2..top_of_range).to_a
  end

  def primes
    return [] if numbers_range.empty?
    divider = numbers_range.first
    marked_nums = {}
    until divider >= numbers_range.last do
      numbers_range.each do |num|
        marked_nums[num * divider] = true unless marked_nums[num * divider] || num * divider > numbers_range.last
      end
      divider = find_next_divider(divider, marked_nums)
    end
    numbers_range - marked_nums.keys
  end

  private

  def find_next_divider(previous_divider, marked_nums)
    next_divider = previous_divider += 1
    if marked_nums[next_divider]
      next_divider = find_next_divider(next_divider,marked_nums)
    end
    next_divider
  end
end
