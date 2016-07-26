package clock

import (
  "strconv"
)

const testVersion = 4

type Clock struct {
  hours, minutes int
}

func New(hour, minute int) Clock {
  clock := Clock{};
  clock.hours = hour;
  clock.minutes = minute;
  return clock;
}

func (clock Clock) String() string {
  hour := "";
  minute := "";
  numberDays := 1;
  numberHours := 1;

  if clock.minutes > 59 {
    numberHours = clock.minutes/60;
    clock.minutes -= (numberHours * 60);
    clock.hours += (numberHours);
  } else if clock.minutes < -59 {
    numberHours = clock.minutes/-60;
    clock.minutes += (numberHours *60);
    clock.hours -= numberHours;
  }

  if clock.minutes < 0 {
    clock.hours --;
    clock.minutes = 60 + clock.minutes;
  }

  if clock.hours > 23 {
    numberDays = clock.hours/24;
    clock.hours -= (numberDays * 24);
  } else if clock.hours < -23 {
    numberDays = clock.hours/-24;
    clock.hours += (numberDays * 24);
  }

  if clock.hours < 0 {
    clock.hours = 24 + clock.hours;
  }

  if clock.hours > 9 {
    hour = strconv.Itoa(clock.hours);
  } else {
    hour = "0" + strconv.Itoa(clock.hours);
  }

  if clock.minutes > 9 {
    minute = strconv.Itoa(clock.minutes);
  } else {
    minute = "0" + strconv.Itoa(clock.minutes);
  }
  return hour + ":" + minute;

}

func (clock Clock) Add(minutes int) Clock {
  clock.minutes += minutes;
  return clock;
}
