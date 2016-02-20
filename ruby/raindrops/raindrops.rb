require 'Prime'

class Raindrops

  def self.convert(num)
    prime_factors = []
    return num.to_s if num < 3

    base_case(num)

    calculate_prime_factors(num, prime_factors)

    return output(prime_factors) unless output(prime_factors).empty?
    return num.to_s
  end

  def self.calculate_prime_factors(num, prime_factors)
    primes = [2, 3,	5, 7]
    i = 0
    until num.prime?
      if num % primes[i] == 0
        num = num/primes[i]
        prime_factors << primes[i]
      else
        i += 1
      end
    end
    prime_factors << num
    prime_factors
  end

  def self.output(prime_factors)
    output = []

    output << "Pling" if prime_factors.include?(3)
    output << "Plang" if prime_factors.include?(5)
    output << "Plong" if prime_factors.include?(7)
    output.join
  end

  def self.base_case(num)
    case num
    when 3
      "Pling"
    when 5
      "Plang"
    when 7
      "Plong"
    end
  end
end
