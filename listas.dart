void main() {
  final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  List<String> desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  List desserts3 = <String>['cookies', 'cupcakes', 'donuts', 'pie'];

  desserts.remove('cupcakes');
  print(desserts);
  desserts.add('ice cream');
  print(desserts);

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unModifiableList = List.unmodifiable(modifiableList);
  print(unModifiableList);

  const peanutAllergy = true;
  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);

  const desserts4 = ['gobi', 'sahara', 'artic'];
  var bigDesserts = [
    'ARABIAN',
    for (var desert in desserts4) desert.toUpperCase()
  ];
  print(bigDesserts);
}