void main(){
  
 print( greatEveryone() );
 print( addToNumbers(10,20));
 print( isLambda(100,20));
 print (greetPerson(name:'Alex' ));
  
}


String greatEveryone(){
  return 'Hello...';
}

String greatEvery() => 'Hello!!';

int addToNumbers(int a, int b){
  return a + b;
}

int isLambda(int a, int b) => a + b; 

int addTwo(int a,[ int b = 0] ){
 //b ??= 0;
 return a + b;
}

String greetPerson({required String name, String message = 'Hola'}){
  return ' $message $name';
}
