class Prime
  def self.nth(nth)
    raise ArgumentError if nth == 0
    number = 2
    primes = []
    prime_loop(nth, number, primes)
    primes.last
  end

  private
  
  def self.prime_loop(nth, number, primes)
    until primes.length == nth
      primes << number if is_prime(number)
      number += 1
    end
  end

  def is_prime(number)
    if number == 2
      true
    else
      (2..number_sqrt(number)).count { |num| number % num == 0 } == 0 unless number.even?
    end
  end

  def number_sqrt(number)
    (Math.sqrt(number).to_i) + 1
  end
end
