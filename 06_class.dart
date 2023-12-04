void main(){
  final Hero spiderman = Hero('Peter', 'spiderSense');
  print (spiderman);
}


class Hero {
 String name ;
 String power ;
  //manera mas facil de inicializar una clase
  Hero(this.name, this.power);

  //Hero(String name, String power)
    //usar la palabra this es opcional
 // :  name= name,
   // power = power;
  

}