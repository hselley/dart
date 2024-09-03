import 'dart:math';

void main() {
  final A = <List<double>>[
    [10, -1, 2, 0],
    [-1, 11, -1, 3],
    [2, -1, 10, -1],
    [0, 3, -1, 8]
  ];
  final b = <double>[6, 25, -11, 15];

  List<double> x = Jacobi(A, b, 1e-10);
  print(x);
}

List<double> Jacobi(List<List<double>> A, List<double> b, [double TOL=1e-2, int N0=50]) {
  int n = A.length; // Cantidad de incógnitas
  int k = 1;
  double suma = 0.0;
  var x0 = List.filled(n, 0.0);   // Vector inicial
  var x = List.filled(n, 0.0);    // Vector aproximación a solución

  while(k<=N0) {
    for(int i=0; i<n; i++) {
      suma = 0.0;
      for(int j=0; j<n; j++) {
        if(j!=i) {
          suma += A[i][j]*x0[j];
        }
      }
      x[i] = 1 / A[i][i] * (-suma + b[i]);
    }
    print(norma(restaV(x,x0)));
    if(norma(restaV(x,x0)) < TOL) {
      return x;
    }
    k++;
    x0 = [...x]; 
    // Esto crea un clon de la lista, de no ser así se hace una
    // copia por referencia
  }
  print("El método fracasó luego de $N0 iteraciones");
  return x;
}

List<double> restaV(List<double> x, List<double> y) {
  var r = List.filled(x.length, 0.0);

  for(int i=0; i<x.length; i++) {
    r[i] = x[i] - y[i];
  }

  return r;
}

double norma(List<double> x) {
  double r = 0.0;

  for(var i in x) {
    r += pow(i,2);
  }

  // for-each
  // x.forEach((i) => r+=pow(i,2));

  return sqrt(r);
}