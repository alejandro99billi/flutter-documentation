void main(){
  
  final Map<String, dynamic> rawJson= {
    'name': 'Tony',
    'power': 'Money',
    'isAlive': true
  };
  
  final ironMan = Hero.fromJson(rawJson);
  
//   final ironMan = Hero(
//   isAlive:rawJson['isAlive2'] ??  false,
//   power: 'rich',
//   name: 'tony');
  
   print(ironMan);
}


class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //validar siempre los campos que pueden ser nulls
  Hero.fromJson(Map<String, dynamic> json) 
     : name = json['name'] ?? 'No name',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? 'No live';   
//   };
  
  @override
  String toString(){
    return '$name,  $power , ${ isAlive ? 'Yes' : 'No'} ';
  }
}