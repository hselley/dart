/// Set : Conjuntos en Dart 

void main() {

  // Definición
  final Set<int> someSet = {};
  // Alternativa declaración
  final someSet2 = <int>{};

  // Declaración y asignación
  final anotherSet = {1,2,3,1};
  print(anotherSet);

  // Operaciones
  // Existencia
  print(anotherSet.contains(1));
  print(anotherSet.contains(100));

  // Añadir
  final someSet3 = <int>{};
  someSet3.add(41);
  someSet3.add(12);
  someSet3.add(41);
  print(someSet3);

  // Borrar
  someSet3.remove(12);
  print(someSet3);

  // Añadir múltiples elementos
  someSet3.addAll([1,2,3,4]);
  someSet3.addAll([12]);
  print(someSet3);

  // Intersección
  final setA = {8,2,3,1,4};
  final setB = {1,6,5,4};

  final intersection = setA.intersection(setB);
  print(intersection);

  final union = setA.union(setB);
  print(union);

  final setC = {...setB, 7,8,9}; // spread operator
  print(setC);

  setC.forEach((x) => print(x*x));
}