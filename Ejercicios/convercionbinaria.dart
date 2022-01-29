import 'dart:io';

void main(List<String> arguments) {
 
  print('Ingresa el número para convertir a binario:');
  int numdecimal = int.parse(stdin.readLineSync()!);
  int Nbin = 0;
  int i = 1;
  while (numdecimal > 0) {
    Nbin = Nbin + (numdecimal % 2) * i;
    numdecimal = (numdecimal / 2).floor();
    i = i * 10;
  }
  print("El valor en binario del numero ingresado es: $Nbin");
}