class Gigasecond
    @giga = 10**9

  def self.from(time)
    time + @giga
  end
end
