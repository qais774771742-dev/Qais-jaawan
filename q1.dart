import 'dart:io';
void main(){
print("Enter studentName: ");
String? studentName =stdin.readLineSync();


print("Enter mark $studentName:");
String? scoreInput = stdin.readLineSync();

double testscore =double.tryParse(scoreInput ?? '0') ?? 0.0;

testscore +=5;

if(testscore >=50){
  print("Student $studentName succeeded / Final score $testscore");
}
else {
  print("Student $studentName failed / Final score $testscore");
}




}