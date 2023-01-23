void main(List<String> arguments) {
  
  
  //labThings es una lista de dynamic
  var labThings = [
    'chairs',
    'tables',
    'PC',
    'laptops',
    'code',
    'software',
    'mouse',
    'cable'
  ];
  print('Imprimiendo el contenido de labThings con print: $labThings');
  
  print('Imprimiendo el contenido de labThings con for: ');
  for (var e in labThings) {print(e);}
  
  var i = 1;
  var mapLabThings = {
    for (var e in labThings)
    i++: e    
  };
  print('Contenido del mapa: $mapLabThings'); //Tiene pares (clave-valor)

  i = 1;
  var cosasCon5Letras = {
    for (var e in labThings)
      if (e.length >=5 && e.length <=6)
        i++: e
  };
  print('Cosas del lab con 5 a 6 letras: $cosasCon5Letras');
  
  //Agregar vaores a un mapa
  cosasCon5Letras[5] = 'control';
  print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');
  //Agregar solo si no está en el mapa y recuperar ese valor
  var valor1 = cosasCon5Letras.putIfAbsent(6, () => 'virus');
  print('Valor obtenido del mapa: $valor1');
  print('Actualización de cosas del lab con 5 o 6 letras: $cosasCon5Letras');
  
}