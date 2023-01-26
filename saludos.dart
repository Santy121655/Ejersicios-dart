void main(List<String> argumens) {
  dividir();
  //bool r = esPar();
  print('El numero es par?: ${esPar()}');
  //Llamado a funciones que requieren parametros
  saludo1('Aome');
  String nombre = 'Inuyasha';
  saludo1(nombre);
  saludo2('Seshomaru', 1985);
  saludo3('Sango', 2000);
  String? nombre2;
  int? year2;
  saludo3(nombre2, year2);
  saludo4();
  saludo4('Miroku');
  // saludo4(2040); Se debe enviar al menos el argumento String
  saludo4('Shippo', 2040);

  //llamando a la funcion saludo5 co parametros no,brados
  saludos5(); //como son opcionales los parametros
  saludos5(name: 'kiko');
  saludos5(year: 2040, name: 'Mionga');
  saludos5(year: year2);

  saludos6(name: 'cleto', mensaje: 'queonda');
  saludos6(name: 'quetal', mensaje: 'petronila');
}

void dividir() {
  int n1 = 12;
  int n2 = 5;
  int cociente;
  int residuo;
  double resultado;

  resultado = n1 / n2;
  print('Resultado de dividir $n1 entre $n2 es $resultado');

  cociente = n1 ~/ n2;
  print('Cociente de la division entre $n1 y $n2 es $cociente');

  residuo = n1 % n2;
  print('Residuo de la division entre $n1 y $n2 es $residuo');
}

bool esPar() {
  //Funcion que regresa un valor bool y no recibe parametros
  var numero = 15;
  if (numero % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

//Se tieen que mandar los parametros de manera en que se piden y ordenada
void saludo1(String name) {
  //Funcion con un parametro posicional
  print('Hola $name');
}

void saludo2(String name, int year) {
  //Funcion con dos parametros posicionales
  print('Saludo2 Hola $name, estas en el año $year');
}

void saludo3(String? name, int? year) {
  //El signo de interrogacion es para der que es tato puede ser nulo
  //Funcion con dos parametros posicionales
  //que podrian tener un valor nulo
  print('Saludo3 Hola $name, estas en el año $year');
}

void saludo4([String name = 'desconocido', int year = 2023]) {
  //Funcion con dos parametros opcionales
  // Se le pueden enviar 0, 1 o 2 parametros
  print('Saludo4 Hola $name, estas en el año $year');
}

void saludos5({String name = 'desconocido', int? year}) {
  //funcion con dos parametros nombradas
  //estos parametros son opcionales y se pueden enviar en cualquier orden
  //se requieres iniciar o permitir valores null
  print('Saludos Hola $name,  estas en el año $year ');
}

void saludos6({required String name, required String mensaje}) {
  //funcion con dos parametros nombrados pero requeridos
  print('Saludos6 $mensaje,$name');
}
