/** 
  Serie de ULAM
*/

void main(List<String> arguments) {

  double x = 105;

  while(x != 1) {
    if(x%2==0){
      x/=2;
    } else {
      x = 3*x+1;
    }
    print(x);
  }

}