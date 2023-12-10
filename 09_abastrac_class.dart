void main (){
  
  final windPlant = WindPlant(initialEnergy : 19);
  final nuclearPlant = WindPlant(initialEnergy : 19);
   
  print('wind: ${ chargePhone( windPlant) }');
  print('nuclear: ${ chargePhone( nuclearPlant) }');
}

//aplico el principio de inversion de dependencias
double chargePhone( EnergyPlant plant ){
  if (plant.energyLeft < 10){
    throw Exception('Not enough energy');
    
  }
  return plant.energyLeft - 10 ;
}

enum PlantType {
  nuclear,
  wind,
  water
}

//todas las clases que extiendan tendran estos metodos y atributos 
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind , water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount){
   //  throw UnimplementedError();
  }
  
}

//extends  implemento  todos los metodos 
class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy})
    : super(energyLeft: initialEnergy, type : PlantType.wind);
   
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
  
}

//necesitamos depender solo de abstraciones para implementar solo un metodo o los que yo necesito
class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear; 
  
  
  NuclearPlant ({required this.energyLeft});
    
  @override
    void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
  
  
}