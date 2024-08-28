import 'dart:math';
void main() {
  // final raiz = secante(1,2,0.01,25);
  final raiz = secante(1,2);
  print("La raíz de la función es: $raiz");
}

double secante(double p0, double p1, [double TOL=1e-2, int n0=50]) {
  int i=2;
  double q0=f(p0);
  double q1=f(p1);
  while(i<=n0) {
    double p = p1-(q1*(p1-p0)/(q1-q0));
    print("p_$i = $p");
    if((p-p1).abs() < TOL){
      final er = (p-p1).abs()/p.abs()*100;
      print("ER = $er %");
      return(p);
    }
    i++;
    p0=p1;
    q0=q1;
    p1=p;
    q1=f(p);
  }
  print("El método fracasó luego de $n0 iteraciones.");
  return(0);
}

double f(double x) {
  return(pow(x,3) + 4*pow(x,2) - 10);
}