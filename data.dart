import 'dart:ffi';

void main(){
  



}
bool checkAnagram(String str1,String str2){
  if(str1.length != str2.length){
    return false;
  }
  for(int i = 0;i<str1.length;i++){
    if(!str1[i].contains(str2)){
      return false;
    }
  }
  return true;

}


void main() {
  // Map<String, String> users = {};
  List<String> fruits = ["banana", "orange", "lemon", "banana", "orange"];

  //add user
  // users.putIfAbsent("firstname", () => "Excellent");
  // users.putIfAbsent("lastname", () => "Jedy");
  // users.putIfAbsent("Age", () => "23");
  // users["gender"] = "Male";
  // print(users);

  //check if key exists
  // bool isKeyExists = users.containsKey("firstName");
  // print(isKeyExists);

  //return frequency of items

  Map<String, Int> freqFruits(List<String> fruits) {
    int count = 0;
    String fruit = "";
    for (int i = 0; i < fruits.length; i++) {
       fruit = fruits[i];
      if (fruits.contains(fruit)) {
        count++;
      }
    }
    return freqFruits("$fruit", "$count");
  }

  ;
}