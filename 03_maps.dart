void main(){
  //Map<String, dynamic> pokemon
  final Map<String, dynamic>pokemon =  {
    'name':'Ditto',
    'hp':100,
     'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1:'ditto/front',
      2: 'ditto.back'
    }
  };
  
  // Map<int, String> pokemons
  final pokemons = {
    1:'AB',
    2:'123'
  };
  
 
  print(pokemon);
  print('Name: ${ pokemon['name'] }' );
  print('Name: ${ pokemon['sprites']}');
  //referencion dentro de una mappa 
  //se usa una referencia a punto typando este objeto
  print('Back: ${ pokemon['sprites'][2]}');
  print('Front: ${ pokemon['sprites'][1]}');
  
}