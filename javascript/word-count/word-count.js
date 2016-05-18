function Words() {}

Words.prototype.count = function(words) {
  var wordCount = {};
  var splitWords = words.toLowerCase().trim().split(/\s+/);

  splitWords.forEach(function(word) {
    if(wordCount[word] && wordCount.hasOwnProperty(word)) {
      wordCount[word]++;
    } else {
      wordCount[word] = 1;
    }
  });
  return wordCount;
};

module.exports = Words;
