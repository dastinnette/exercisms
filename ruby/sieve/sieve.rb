class Sieve
  attr_reader :limit

  def initialize(num)
    @limit = 1.upto(num)
  end

  def primes
    []
  end

end
