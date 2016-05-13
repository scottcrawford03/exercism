class Sieve
  attr_reader :numbers_range, :marked_nums

  def initialize(top_of_range)
    @numbers_range = (2..top_of_range).to_a
    @divider = 2
    @marked_nums = {}
  end

  def primes
    return [] if numbers_range.empty?

    until @divider > numbers_range.last do
      numbers_range.each do |num|
        search_num = num * @divider
        marked_nums[search_num] = true unless marked_nums[search_num] || search_num > numbers_range.last
      end
      @divider = find_next_divider(@divider)
    end
    numbers_range - marked_nums.keys
  end

  private

  def find_next_divider(previous_divider)
    next_divider = previous_divider + 1
    next_divider = find_next_divider(next_divider) if marked_nums[next_divider]
    next_divider
  end
end
