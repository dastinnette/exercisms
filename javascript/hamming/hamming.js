function Hamming() {}

Hamming.prototype.compute = function (strand1, strand2) {
  var hammingDistance = 0;
  var splitStrand1 = strand1.split("");
  var splitStrand2 = strand2.split("");

  if(strand1.length != strand2.length){
    throw "DNA strands must be of equal length."
  } else {
      for(var i = 0; i < strand1.length; i++) {
        if(splitStrand1[i] != splitStrand2[i]) {
          hammingDistance ++;
        }
      }
    }
  return hammingDistance;
};

module.exports = Hamming;
