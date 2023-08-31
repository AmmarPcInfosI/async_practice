import 'package:async_practice/async_practice.dart' as async_practice;

void main() async{
  double a=12.3;
  double b=6.2;
  Future f=Future(() => 5);
  Future.delayed(Duration(seconds: 5),(){
    print("The sum operation of $a & $b =${sum(a, b)}"); //Printed Last
  });
  Future.delayed(Duration(seconds: 4),(){
    print("The divide operation of $a & $b =${divide(a, b)}");//Printed Fourth
  });
  Future.delayed(Duration(seconds: 3),(){
    print("The multiply operation of $a & $b =${multiply(a, b)}");//printed Third
  });
  Future.delayed(Duration(seconds: 2),(){
    print("The subtract operation of $a & $b =${sub(a, b)}");//Printed Second
  });
  Future.delayed(Duration(seconds: 2),(){
    print("The average operation of $a & $b =${avg(a, b)}");//Printed First
  });
  

}

double sum(double a,double b){
  return (a+b);
}
double divide(double a,double b){
  return (a/b);
}
double multiply(double a,double b){
  return (a*b);
}
double sub(double a,double b){
  return (a-b);
}
double avg(double a,double b){
  return (a+b)/2;
}

