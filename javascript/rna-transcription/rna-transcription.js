function dnaTranscriber() {}

dnaTranscriber.prototype.toRna = function(dna) {
  var splitDna = dna.split("");
  var rna = [];

  for(var i = 0; i < dna.length; i++) {
    if(splitDna[i] == "C") {
      rna.push("G");
    } else if(splitDna[i] == "G") {
      rna.push("C");
    } else if(splitDna[i] == "A") {
      rna.push("U");
    } else {
      rna.push("A");
    }
  }
  return rna.join("");
};

module.exports = dnaTranscriber;
