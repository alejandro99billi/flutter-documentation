void main(){
  final Hero spiderman = Hero(name: 'Peter', power :'spiderSense');
  print (spiderman);
}


class Hero {
 String name ;
 String power ;
  //manera mas facil de inicializar una clase
  Hero({
    required this.name,
    required  this.power
    });

  //Hero(String name, String power)
    //usar la palabra this es opcional
 // :  name= name,
   // power = power;
  
   @override
   String toString(){
     return '$name - $power';
   }
  
  
}