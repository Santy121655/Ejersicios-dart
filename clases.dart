import 'dart:io';

void main(List<String> arguments) {
  var unaLaptop = Computadora(marca: 'Dell', cpu: 'Intel core i9', ram: 32);
  print('Informacion de la laptop que te venden en internet: $unaLaptop');

  stdout.write('?Esta computadora es adecuada para la materia DMM?');

  String? respuesta = stdin.readLineSync();
  if (respuesta != null) {
    if (respuesta.contains('si')) {
      unaLaptop.configurarAdecuada = true;
    } else {
      unaLaptop.configurarAdecuada = false;
    }
  } else {
    print('No se puede aber si la PC es adecuada por que se resibio null');
  }
  print(
      'laptop1  es adecuada para saber tu materia : ${unaLaptop.esAdecuada} ');

  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'celeron';
  unaLaptop.ram = 4;
  print('Informacion de unaLaptop que te llego  a casa :  $unaLaptop');
}

class Computadora {
//campos
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada = false;

  //contructor
  /*Computadora(String m, String c, int r) {
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }*/
  //forma corta de escibrir el constructor con parametros nombrados
  Computadora({this.marca, this.cpu, this.ram});

  @override
  String toString() {
    return 'Marca: $marca, CPU: $cpu,RAM: $ram ,es adecuada para DMM: $adecuada';
  }

//getter de la variable
  bool get esAdecuada {
    return this.adecuada;
  }

//setter de la viarble adecuada
  set configurarAdecuada(bool valor) {
    adecuada = valor;
  }
}
