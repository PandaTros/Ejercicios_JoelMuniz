import 'dart:io';

void main() {
  
  print('Ingresa el número de horaa trabajadas');
  int horasTrabajadas = int.parse(stdin.readLineSync()!);
  //final horasTrabajadas = 40;

  final salarioHora = 120;
  final salarioHoraExtra = 175;
  final horasNormales;

  var salarioSemanal;

  if (horasTrabajadas > 40) {
    salarioSemanal = 40 * salarioHora;
    salarioSemanal += (horasTrabajadas - 40) * salarioHoraExtra;
    
  } else {
    salarioSemanal = horasTrabajadas * salarioHora;
  }

  horasNormales = horasTrabajadas;

  if (horasNormales >= 40){
    print('El salario semanal es de: $salarioSemanal se le ha pagado extra de 175 por sus horas por sus horas');
  }
   else if(horasNormales >= 28 && horasNormales <= 39){
    print('El salario semanal es de: $salarioSemanal');
  }
  else if (horasNormales <=27){
    print('El salario semanal es de: $salarioSemanal se le levantara un acta administrativa por sus faltas de horas, a las dos actas acomuladas sera despedido');
  }
  
}