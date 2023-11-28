void main(){
  final numbers = [1,2,3,4,5,9,9];
  
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index ${ numbers.first }');
  print('Reversed ${ numbers.reversed }');
  
  //un elemento que se puede iterar
  final reversedNumbers = numbers.reversed;
    print('iterable: $reversedNumbers');
  print('list: ${reversedNumbers.toList()}');
  //valores unicos 
  print('set: ${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where( (num) {
    return num >5;
  });
  
  print('>5: ${numbersGreaterThan5.toSet}' );
}