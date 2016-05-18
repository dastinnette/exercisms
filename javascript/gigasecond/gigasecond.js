function Gigasecond(date) {
  this.startDate = date;
}

Gigasecond.prototype.date = function() {
  var endDate = new Date(this.startDate.getTime() + 1e12);

  return endDate;
};

module.exports = Gigasecond;
