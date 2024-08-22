import 'dart:math';

void main() {
  print(10.isEven);

  print(3.141596.round());

  print(sqrt(2));
  print(pi);

  int numero = 10;
  print(numero.round());
  print('$numero es par?: ');
  print(numero.isEven);
  print('$numero es impar?: ');
  print(numero.isOdd);

  // int y double son subclases de num
  num n = 50;
  print("Mi número es $n");
  print(n is int);
  print(n is double);
  print(n is num);

  n=50.5;
  print("Mi número es $n");
  print(n is int);
  print(n is double);
  print(n is num);

  print(DateTime.now().hour);

  print("Constantes:");
  const double c = 21.2;
  print(c);
  print(c is int);
  print(c is double);
  print(c.runtimeType);

  final double d;
  d = 10.4;
  print(d);
  // d = 14.3;
  // print(d);

  // Dart soporta emojis: emojipedia.org

  final calaca = '💀';
  print(calaca);

  const family = '👪';
  print(family);
  print(family.runes);
  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);

  int? x;
  print(x);

  const bigString = '''
    Este es un
    comentario multi-linea
    Disfrútelo!
  ''';
  print(bigString);

  final name = "Juan Perez";
  const rawString = r'My name \n is $name';
  print(rawString);
  print("My name \n is $name");
  print(r"My name \n is $name");

  print('I \u2764 Dart \u0021');

  print('I love \u{1F3AF}');

  var myData = 5782;
  String myFunction(String name) {
    myData = -1;
    return 'BBVA pin: $name';
  }

  print(myFunction("hackeado"));
  print(myData);


}
