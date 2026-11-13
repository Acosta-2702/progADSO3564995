// 3. El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para
// sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio
// unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al
// precio normal.

import 'dart:io';

void main(List<String> args) {
  // 1. Definicion Vbles
  String modelo, teclado;
  double precioUnitario, total, descuento;
  int cantidad;

  // 2. Entrada
  print("Ingrese el modelo del traje:");
  modelo = stdin.readLineSync() ?? "";
  print("Ingrese el precio unitario:");
  teclado = stdin.readLineSync() ?? "";
  precioUnitario = double.parse(teclado);
  print("Ingrese la cantidad de trajes:");
  teclado = stdin.readLineSync() ?? "";
  cantidad = int.parse(teclado);

  // 3. Proceso
  total = precioUnitario * cantidad;
  descuento = 0;
  if (cantidad >= 3) {
    descuento = total * 0.17;
  }
  total = total - descuento;

  // 4. Salida
  print("Modelo: $modelo");
  print("El total a pagar es ${total.toInt()} con un descuento de ${descuento.toInt()}");
}