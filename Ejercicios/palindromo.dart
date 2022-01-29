import 'dart:io';

void main() {
String minus;
String espacios;
int contador;
 print('Ingresa una frase:');
String ? frase = stdin.readLineSync()!;

contador = frase.split(' ').length;

print('Numero de espacios de la frase = $contador');

espacios = frase
.replaceAll(" ", "");


minus = espacios.toLowerCase();

String reverse = minus.split('').reversed.join('');

//print(minusculas);

print('');

if(minus == reverse)
{
print('La frase Ingresada es un Palindromo');
}
else
{
print('La frase Ingresada no es un Palindromo');
}
  
}