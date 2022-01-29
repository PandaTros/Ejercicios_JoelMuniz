import 'dart:io';


void main() {
  print('Ingresa tu altura en cm :');
double preheight = double.parse(stdin.readLineSync()!);
print('Ingresa el peso:');
double weight = double.parse(stdin.readLineSync()!);

double height = preheight / 100;
  double imc = weight / (height * height);
  double imcfinal = double.parse(imc.toStringAsFixed(2));
  print("");

  if (imcfinal < 18.5) {
    print(
        "Con un IMC de $imcfinal, Tu indice de Masa corporal indica que tienes un peso abajo del promedio normal.");
  } else if (imcfinal < 25) {
    print(
        "Con un IMC de $imcfinal, Tu indice de Masa corporal indica  que tienes un peso normal.");
  } else if (imcfinal < 30) {
    print(
        "Con un IMC de $imcfinal, Tu indice de Masa corporal indica que tienes un peso arriba del promedio normal.");
  } else {
    print(
        "Con un IMC de $imcfinal, Tu indice de Masa corporal indica que tienes obesidad :c ");
  }
}
