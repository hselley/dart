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

  const Map<String, String> synopses = {
  'Casablanca': 'This was the first attempt by Warner Brothers to make '
                'the movie classic into a series. It was part of a revolving '
                'group of shows that included Kings Row on a show called Warner '
                'Brothers Presents.',
  'Citizen Kane': 'Newspaper magnate Charles Foster Kane is taken from his mother '
                'as a boy and made the ward of a rich industrialist. As a result, '
                'every well-meaning, tyrannical or self-destructive move he makes '
                'for the rest of his life appears in some way to be a reaction to '
                'that deeply wounding event.',
  'Fight Club': 'A ticking-time-bomb insomniac and a slippery soap salesman channel '
                'primal male aggression into a shocking new form of therapy. Their '
                'concept catches on, with underground "fight clubs" forming in every '
                'town, until an eccentric gets in the way and ignites an out-of-control '
                'spiral toward oblivion.',
  'The Shawshank Redemption': 'Imprisoned in the 1940s for the double murder of his wife '
                'and her lover, upstanding banker Andy Dufresne begins a new life at the '
                'Shawshank prison, where he puts his accounting skills to work for an amoral '
                'warden. During his long stretch in prison, Dufresne comes to be admired by '
                'the other inmates -- including an older prisoner named Red -- for his '
                'integrity and unquenchable sense of hope.',
  'The Truman Show': 'Every second of every day, from the moment he was born, for the last '
                'thirty years, Truman Burbank has been the unwitting star of the longest '
                'running, most popular documentary-soap opera in history. The picture-perfect '
                'town of Seahaven that he calls home is actually a gigantic soundstage. '
                'Truman\'s friends and family - everyone he meets, in fact - are actors. He '
                'lives every moment under the unblinking gaze of thousands of hidden TV cameras.',
  'Eternal Sunshine of the Spotless Mind': 'Joel Barish, heartbroken that his girlfriend underwent '
                'a procedure to erase him from her memory, decides to do the same. However, as he '
                'watches his memories of her fade away, he realises that he still loves her, and may '
                'be too late to correct his mistake.'
  };

  synopses.forEach((key, value) => print("${key}"));

  for(var item in synopses.keys) {
    print(synopses[item]);
  }
}