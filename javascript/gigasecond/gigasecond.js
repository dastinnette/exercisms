function Gigasecond(date) {
  this.startDate = date.getTime();
}

Gigasecond.prototype.date = function() {
  var endDate = new Date(this.startDate + 1000000000000);

  endDate.setSeconds(0);
  endDate.setMinutes(0);
  endDate.setHours(0);

  return endDate;
};

module.exports = Gigasecond;
