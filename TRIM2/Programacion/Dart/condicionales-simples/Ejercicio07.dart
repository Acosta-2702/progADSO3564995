// 7. Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar
// clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50
// 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar
// será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.

import 'dart:io';

void main(List<String> args) {
  // 1. Definicion Vbles
  String teclado;
  double monto, cuota;

  // 2. Entrada
  print("Ingrese el monto de la fianza:");
  teclado = stdin.readLineSync() ?? "";
  monto = double.parse(teclado);

  // 3. Proceso
  cuota = monto * 0.02;
  if (monto < 50000) {
    cuota = monto * 0.03;
  }

  // 4. Salida
  print("La cuota a pagar es ${cuota.toInt()}");
}