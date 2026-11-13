// 5. Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000
// si se compran menos de 5 llantas y de $70000 si se compran 5 o más.

import 'dart:io';

void main(List<String> args) {
  // 1. Definicion Vbles
  String teclado;
  int cantidad;
  double precioLlanta, total;

  // 2. Entrada
  print("Ingrese la cantidad de llantas:");
  teclado = stdin.readLineSync() ?? "";
  cantidad = int.parse(teclado);

  // 3. Proceso
  precioLlanta = 80000;
  if (cantidad >= 5) {
    precioLlanta = 70000;
  }
  total = precioLlanta * cantidad;

  // 4. Salida
  print("El precio por llanta es ${precioLlanta.toInt()}");
  print("El total a pagar es ${total.toInt()}");
}