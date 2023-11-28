void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List <String> abilities = ['impostor'];
   final sprites = ['ditto/front.png','ditto/bat'];
  
  //String multilines
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
  //dynami == null
  //es como tener un dato variable que puede ser null
  dynamic errorMessage = 'Hola';
  errorMessage = {1,2,3,4}
  
}