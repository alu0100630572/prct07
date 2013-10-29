#! /usr/local/ruby/bin/ruby 

class Fraccion
  attr_reader :num, :den
  
  # Constructor de la clase Fraccion
  def initialize (num, den)
    mcd = gdc(num, den)
    @num = num / mcd
    @den = den / mcd
  end

  # Metodo que calcula el Maximo común divisor
  def gdc(a, b)
    while b != 0
      a, b = b, a % b
    end
    a
  end
  
  # Metodo que imprime el numero racional en el formato: num/den
  def to_s
    "#{@num}/#{@den}"
  end

  # Metodo que devuelve el número racional como flotante
  def to_f
    @num/@den
  end
  
  # Metodo que compara si dos numeros racionales son iguales
  def ==(fraccion)
    ((@num == fraccion.num) && (@den == fraccion.den))
  end

  # Metodo que calcula el valor absoluto de un numero racional
  def abs
    Fraccion.new(@num.abs, @den.abs)
  end

  # Metodo que calcula el reciproco de un numero racional
  def reciproco
    Fraccion.new(@den, @num)
  end
 
  # Metodo que cambia de signo el numero racional
  def -@
    Fraccion.new(-@num, @den)
  end

  # Metodo para sumar dos numeros racionales
  def +(fraccion)
    num = @num * fraccion.den + fraccion.num * @den
    den = @den * fraccion.den
    Fraccion.new(num, den)
  end
  
  # Metodo para restar dos numeros racionales
  def -(fraccion)
    num = @num * fraccion.den - fraccion.num * @den
    den = @den * fraccion.den
    Fraccion.new(num, den)
  end

  # Metodo para multiplicar dos numeros racionales
  def *(fraccion)
    num = @num * fraccion.num
    den = @den * fraccion.den
    resultado = Fraccion.new(num, den)
  end

  # Metodo para dividir dos numeros racionales
  def /(fraccion)
    num = @num * fraccion.den
    den = @den * fraccion.num
    resultado = Fraccion.new(num, den)
  end

  # Metodo para calcular el resto de dos numeros racionales
  def %(fraccion)
    ((@num * fraccion.den) % (@den * fraccion.num))
  end

  # Metodo que calcula si el numero racional es menor que otro dado
  def <(fraccion)
    (@num * fraccion.den) < (@den * fraccion.num)
  end
  
  # Metodo que calcula si el numero racional es mayor que otro dado
  def >(fraccion)
    (@num * fraccion.den) > (@den * fraccion.num)
  end

  # Metodo que calcula si el numero racional es menor o igual que otro dado
  def <=(fraccion)
    (@num * fraccion.den) <= (@den * fraccion.num)
  end

  # Metodo que calcula si el numero racional es mayor o igual que otro dado
  def >=(fraccion)
    (@num * fraccion.den) >= (@den * fraccion.num)
  end
end
