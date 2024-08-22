// Enumerated types -> Enums
enum Weather { sunny, snowy, cloudy, rainy }

void main() {
  if (2>1) {
    print("Verdadero");
  } else {
    print("Falso");
  }

  // Sentencia if-else -> if-else if-else
  final x = 10;
  if (x>0) {
    print("Positivo");
  } else if (x==0) {
    print("Cero");
  } else {
    print("Negativo");
  }

  // Condicional Ternaria
  const score = 63;
  String message;
  
  // Condicional tradicional
  if (score>=60) {
    message = "You passed";
  } else {
    message = "You failed";
  }
  print("$score: $message");
  
  // Ternaria
  message = (score >= 60) ? 'You passed' : 'You failed';
  print("$score: $message");

  // Switch
  final numero = 3;
  switch(numero) {
    case 0:
      print('zero');
      break;
    case 1:
      print("one");
      break;
    case 2: 
      print("three");
      break;
    default:
      print("Something else");
  }

  final weather = 'cloudy';
  switch(weather) {
    case 'sunny':
      print('Put on sunscreen');
      break;
    case 'snowy':
      print("Get your skis");
      break;
    case 'cloudy':
    case 'rainy':
      print("Bring umbrella");
      break;
    default:
      print("I don't know that weather");
  }

  final weatherToday = Weather.rainy;
  switch(weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen');
      break;
    case Weather.snowy:
      print("Get your skis");
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print("Bring umbrella");
      break;
  }
  
  // Ciclos
  // While
  var sum = 1;
  while (sum<20) {
    sum += 4;
    print(sum);
  }

  // do-while
  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while(sum < 10);

  // for
  for(int i=0; i<5; i++) {
    print(i);
  }
  // continue
  for(int i=0; i<5; i++) {
    if(i==2) {
      continue;
    }
    print(i);
  }

  // for-each
  const myString = "I \u2764 Dart";

  for (var point in myString.runes) {
    print(String.fromCharCode(point));
  }

  // for-each compacto
  const myNumbers = [1,2,3,4];
  myNumbers.forEach((number) => print(number));

  for (int number in myNumbers) {
    print(number);
  }
}