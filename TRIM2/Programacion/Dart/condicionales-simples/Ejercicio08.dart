// 8. Dada la duración en minutos de una llamada calcular el costo, considerando:
// • Hasta tres minutos el costo es 600
// • Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.

import 'dart:io';

void main(List<String> args) {
  // 1. Definicion Vbles
  String teclado;
  int minutos;
  double costo;

  // 2. Entrada
  print("Ingrese la duración de la llamada en minutos:");
  teclado = stdin.readLineSync() ?? "";
  minutos = int.parse(teclado);

  // 3. Proceso
  costo = 600;
  if (minutos > 3) {
    costo = 600 + (minutos - 3) * 150;
  }

  // 4. Salida
  print("El costo de la llamada es ${costo.toInt()}");
}