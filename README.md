
Práctica número 6 de Lenguajes y Paradigmas de la Programación

Autores: Oliver Valido Ramos Rodrigo Colombo Vlaeminch

La práctica consiste en diseñar una clase para implementar números racionales utilizando el método del desarrollo dirigido por pruebas usando la herramienta Rspec. En el proyecto tenemos los siguientes ficheros:

    lib/racional.rb

    Metodos:
      - initialize(num, den) Este es el constructor de la clase Fraccion 
      - gdc(a, b) Este método calcula el máximo comçun divisor 
      - to_s Este método permite imprimir el número racional en formato num/den 
      - to_f Este método muestra en número racional como flotante 
      - ==(fraccion) Este método compara si dos números racionales son iguales 
      - abs Este método permite calcular el valor absoluto de un número racional 
      - reciproco Este método calcula el recíproco de un número racional 
      - -@ Este método cambia el signo del número racional 
      - +(fraccion) Este método suma dos números racionales 
      - -(fraccion) Este método resta dos números racionales 
      - *(fraccion) Este método multiplica dos números racionales 
      - /(fraccion) Este método divide dos números racionales 
      - %(fraccion) Este método calcula el resto de dos números racionales 
      - <=>(fraccion) Este método calcula si el número racional es menor, mayor o igual que otro dado. Este método lo hemos modificado para intentar solucionar
        el error que da travis al ejecutar con rbx-19mode, pero no hemos conseguido solucionar el error de esa manera. 

    spec/racional_spec.rb

    Este fichero realiza las pruebas mediante la heramienta Rspec. Las pruebas que realizamos son: 
      - Debe existir un numerador 
      - Debe existir un denominador 
      - Debe de estar en su forma reducida 
      - Se debe invocar al metodo num() para obtener el numerador 
      - Se debe invocar al metodo denom() para obtener el denominador 
      - Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador 
      - Se debe mostar por la consola la fraccion en formato flotante 
      - Se debe comparar si dos fracciones son iguales con == 
      - Se debe calcular el valor absoluto de una fraccion con el metodo abs 
      - Se debe calcular el reciproco de una fraccion con el metodo reciprocal 
      - Se debe calcular el opuesto de una fraccion con 
      - - Se debe sumar dos fracciones con + y dar el resultado de forma reducida 
      - Se debe restar dos fracciones con - y dar el resultado de forma reducida 
      - Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida 
      - Se debe dividir dos fracciones con / y dar el resultado de forma reducida 
      - Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida 
      - Se debe de poder comprobar si una fracion es menor que otra 
      - Se debe de poder comprobar si una fracion es mayor que otra 
      - Se debe de poder comprobar si una fracion es menor o igual que otra 
      - Se debe de poder comprobar si una fracion es mayor o igual que otra

    RakeFile

    Este fichero se encarga de ejecutar las pruebas mediante el comando rspec -I. spec/racional_spec
   
    Gemfile

    En este fichero incluimos als gemas rake y rspec.

    .travis.yml

    En este fichero le indicamos a travis las versiones de ruby en las que queremos que ejecute el código.
