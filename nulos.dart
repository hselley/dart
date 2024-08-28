void main() {
  int? x;
  print(x);

  int? age;
  double? height;
  String? message = "Hello";
  print(message.length);

  String? name;
  name = "Juan Perez";
  print(name);

  // Función que determina si un número es positivo (tolerante a nulo)
  bool isPositive(int? number) {
    if(number == null) return false;
    return !number.isNegative;
  }

  int? valor;
  print(isPositive(valor));

  // Nulos en una lista
  var lista = [14, 0, -1, null];
  lista.forEach((element) {
    print(element);
    print(isPositive(element));
  });

  // Operador if-null
  String? message2;
  final text = message2 ?? 'Error';
  print(text);

  double? fontSize;
  // Sintaxis completa
  // fontSize = fontSize ?? 20.0;
  // Contracción
  fontSize ??= 20.0;
  print(fontSize);

  // Operador de acceso
  int? numero2;
  print(numero2?.isNegative);
  print(numero2?.toDouble());

  // Operador afirmación !
  String? myNullableString = 'abc';
  String nonNulleableString = myNullableString!;
  print(nonNulleableString);

  // Ejemplo: 
  bool? isBeautiful(String? item) {
    if(item == 'flower') {
      return true;
    } else if (item == 'garbage') {
      return false;
    } 
    return null;
  }

  // Operador afirmación
  bool flowerIsBeautiful = isBeautiful('flower')!;
  print(flowerIsBeautiful);

  // Cast down
  bool flowerIsBeautiful2 = isBeautiful('flower') as bool;
  print(flowerIsBeautiful2);

  // Una opción más segura
  bool flowerIsBeautiful3 = isBeautiful(null) ?? true;
  print(flowerIsBeautiful3);

  // Operador índice ?[]

  // Lista que puede contener nulos
  List<int?> myList = [1, 2, 3, null];
  print(myList);

  // Lista nula
  // myList = null;
  print(myList[2]);

  int? myItem = myList[2];

  // Lista que puede ser nula
  List<int>? myList2 = [1, 2, 3];

  myList2 = null;
  print(myList2);

  int? myItem2 = myList2?[2];
  print(myItem2);

  // Lista que puede ser nula y que puede contener nulos.
  List<int?>? myList3 = [1,2,3, null];
  print(myList3);
  myList3 = null;
  print(myList3);

  /// Expresiones condicionales (tenaria)
  var b = true;
  print(b ? "Verdadero" : "Falso");

  int? firstNum = 101;
  int? secondNumber;
  var first = firstNum != 10 ? 'Not $firstNum' : '$firstNum';
  print(first);
  // versión larga
  if (firstNum != 10) {
    print('Not $firstNum');
  } else {
    print(firstNum);
  }

  var second = secondNumber ?? 20;
  print(second);

  var asd = first == 5;
  print(asd);

  int suma(int x, int y, [int z=0]) {
    return x+y+z;
  }

  print(suma(3,5));
  print(suma(3,5,2));
}