import 'dart:ffi';

void main() {
  List<List<String>> sentences = [
    ["ate", "tea", "eat"],
    ["ate", "teeth", "eat"]
  ];
  bool result = checkAnagrams(sentences);
  print(result);
}

bool checkAnagrams(List<List<String>> sentences) {
  for (List<String> words in sentences) {
    List<String> sortedWords = words.map((word) {
      List<String> singleWord = word.split('');
      singleWord.sort();
      return singleWord.join('');
    }).toList();

    String firstWord = sortedWords.first;
    for (String sortedWord in sortedWords) {
      if (sortedWord != firstWord) {
        return false;
      }
    }
  }
  return true;
}

bool checkAnagram(String str1, String str2) {
  if (str1.length != str2.length) {
    return false;
  }
  for (int i = 0; i < str1.length; i++) {
    if (!str1[i].contains(str2)) {
      return false;
    }
  }
  return true;
}
