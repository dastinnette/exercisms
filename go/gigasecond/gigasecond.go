package gigasecond

import (
  "time"
  "math"
)

const testVersion = 4

func AddGigasecond(givenTime time.Time) time.Time {
  exponent := math.Pow(10, 9)
  anniversary := givenTime.Add(time.Duration(exponent) * time.Second);
  return anniversary;
}
