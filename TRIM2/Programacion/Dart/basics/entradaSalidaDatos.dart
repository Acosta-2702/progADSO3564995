import 'dart:io';

void main(List<String> args) {
  // 1. Definicion Vbles
  String nombre;
  String email;
  String telefono;
  int edad;
  double promedio;

  // 2. Entrada
  print("Ingrese el nombre de la persona:"); // Operacion ESCRIBIR
  nombre = stdin.readLineSync()!; // Operacion LEER
  stdout.writeln("Ingrese el email de la persona:"); // Operacion ESCRIBIR 
  email = stdin.readLineSync()!; // Operacion LEER
  stdout.writeln("Ingrese su numero de telefono:");
  telefono = stdin.readLineSync()!;
  stdout.writeln("Ingrese su edad:");
  edad = int.parse(stdin.readLineSync()!); 
  print("Ingrese su promedio:");
  promedio = double.parse(stdin.readLineSync()!);

  // 3. Proceso
  if(edad >= 18){
    print("Usted es mayor de edad");
  }else{
    print("Usted es menor de edad");
  }

  // 4. Salida
  print("Su nombre es: $nombre, Su email es: $email, Su edad es: $edad");
  print("Su telefono es: $telefono");
  print("Su promedio es: $promedio");
}