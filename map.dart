import 'dart:ffi';
import 'dart:core';

void main() {
  Map<String, String> users = {};
  // Map<int,int> qty = Map<int, int>();

  //add to map
  users.putIfAbsent("firstName", () => "Excellent");
  users.putIfAbsent("lastName", () => "Jedy");
  users.putIfAbsent("Age", () => "23");
  users["gender"] = "Male";

// print(users);
// users.forEach((key, value) {
//   print("$key,  $value");
// });

//check if key exists
  bool isKeyExists = users.containsKey("firstName");
// print(isKeyExists);
  List<String> words = ["banana", "orange", "banana", "lemon", "orange"];
  print(findFrequency(words));
}

//return the frequency of item in any given list use map.
// ["banana","orange","lemon","banana","orange"] => [banana, orange,lemon], [lemon]
// {
//   "banana":2,
//   "lemon":1,
//   "orange":2
// }

Map<String, int> findFrequency(List<String> words) {
  Map<String, int> frequencyMap = {};
   Set<String> uniqueWords = words.toSet();

  for (String word in uniqueWords) {
    if (frequencyMap.containsKey(word)) {
      frequencyMap[word] = frequencyMap[word]! + 1;
    } else {
      frequencyMap[word] = 1;
    }
  }

  return frequencyMap;
}
//compete other two
