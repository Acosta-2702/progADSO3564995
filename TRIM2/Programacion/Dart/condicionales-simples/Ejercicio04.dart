// 4. Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
// descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
// es 2 el descuento en del 20% (solo existen dos claves).

import 'dart:io';

void main(List<String> args) {
  // 1. Definicion Vbles
  String articulo, teclado;
  int clave;
  double precio, descuento, precioFinal;

  // 2. Entrada
  print("Ingrese el nombre del artículo:");
  articulo = stdin.readLineSync() ?? "";
  print("Ingrese la clave (1 o 2):");
  teclado = stdin.readLineSync() ?? "";
  clave = int.parse(teclado);
  print("Ingrese el precio original:");
  teclado = stdin.readLineSync() ?? "";
  precio = double.parse(teclado);

  // 3. Proceso
  descuento = 0;
  if (clave == 1) {
    descuento = precio * 0.10;
  }
  if (clave == 2) {
    descuento = precio * 0.20;
  }
  precioFinal = precio - descuento;

  // 4. Salida
  print("Artículo: $articulo");
  print("Clave: $clave");
  print("Precio original: ${precio.toInt()}");
  print("Precio con descuento: ${precioFinal.toInt()}");
}