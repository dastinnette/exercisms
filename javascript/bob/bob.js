var Bob = function() {};

Bob.prototype.hey = function(input) {
  var splitInput = input.replace(/[0-9]/g, 'a').split("");
  var punctuation = splitInput[splitInput.length - 1];
  var first_word = splitInput[1];

  if(punctuation == "!" && first_word == first_word.toUpperCase() ||
     punctuation == "?" && first_word == first_word.toUpperCase()) {
    return "Whoa, chill out!";
  } else if(punctuation == "?") {
      return "Sure.";
  } else if(input == '' || input == '   ') {
      return "Fine. Be that way!";
  } else {
      return "Whatever.";
  }
};

module.exports = Bob;
