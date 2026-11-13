// 6. En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento
// dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el
// descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%.
// Obtener cuánto dinero se le descuenta.

import 'dart:io';

void main(List<String> args) {
  // 1. Definicion Vbles
  String teclado;
  double totalCompra, porcentaje, descuento;
  int numero;

  // 2. Entrada
  print("Ingrese el total de la compra:");
  teclado = stdin.readLineSync() ?? "";
  totalCompra = double.parse(teclado);
  print("Ingrese el número escogido:");
  teclado = stdin.readLineSync() ?? "";
  numero = int.parse(teclado);

  // 3. Proceso
  porcentaje = 0.15;
  if (numero >= 74) {
    porcentaje = 0.20;
  }
  descuento = totalCompra * porcentaje;

  // 4. Salida
  print("Número escogido: $numero");
  print("El dinero que se le descuenta es ${descuento.toInt()}");
}