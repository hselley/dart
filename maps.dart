// Mapas: Una colección de datos organizados por el par (llave:valor)
void main() {
  // Declaración
  final Map<String, int> emptyMap1 = {};
  // Alternativa
  final emptyMap2 = <String, int>{};
  // Otra alternativa
  final emptyMap3 = {};

  // Inicializar un mapa con valores
  final inventory = <String,int>{
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(digitToWord);

  final map = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
    1: 'ONE',
  };
  print(map);

  final map2 = <int, List<String>>{
    1: ['one','ONE'],
    2: ['two'],
    3: ['three'],
    4: ['four'],
  };
  print(map2);

  // Acceso
  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes);
  print(numberOfCakes?.isEven);

  // Agregar un par llave:valor al mapa
  inventory['brownies'] = 3;
  print(inventory);

  // Actualizar valor
  inventory['brownies'] = 5;
  print(inventory);

  // Borrar elemento del mapa
  inventory.remove('brownies');
  print(inventory);

  // Propiedades
  print(inventory.isEmpty);
  print(inventory.isNotEmpty);
  print(inventory.length);
  print(inventory.keys);
  print(inventory.values);
  print(inventory.containsKey('pies'));
  print(inventory.containsValue(34));
  
  // Iterar un mapa
  for(var item in inventory.keys) {
    print(inventory[item]);
   }

  inventory.forEach((key,value) => print('$key -> $value'));
}