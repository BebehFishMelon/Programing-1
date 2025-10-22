String message = "I like poopy in hamburger cow!";
int key = 67;
String encrypted = "";
void setup(){
  size(600,400);
  background(255);
  textSize (20);
  encrypted = encrypt(message, key);
  fill(0000);
  text("Original: " + message, 20, 80);
  text("Encrypted: " + encrypted, 20, 180);
}
String encrypt(String text, int shift){
  String result = "";
  for(int i = 0; i < text.length(); i++){
    char c = text.charAt(i);
    c += shift;
    result += c;
  }
  return result;
}

  
