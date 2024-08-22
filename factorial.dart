void main() {
  final int n=5;
  
  print("Cíclico:");
  final fc = factorialCiclico(n);
  print("$n! = $fc");
  
  print("Recursivo:");
  final fr = factorialRecursivo(n);
  print("$n! = $fr");
}

double factorialCiclico(int n) {
  double f=1;
  for(int i=1; i<=n; i++) 
    f*=i;
  return(f);
}

double factorialRecursivo(int n) {
  if(n==0 || n==1) 
    return(1);
  else 
    return n*factorialRecursivo(n-1);
}
