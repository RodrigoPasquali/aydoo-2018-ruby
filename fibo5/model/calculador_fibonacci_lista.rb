require_relative './calculador_fibonacci_sumatoria'

class CalculadorFibonacciLista < CalculadorFibonacci
  def initialize
	@calculador_siguiente = CalculadorFibonacciSumatoria.new
  end

  def calcular_fibo(numero_ingresado, funcionamiento)
	if(funcionamiento == 'lista')
	  self.calcular_sucesion(numero_ingresado)
	else
	  @calculador_siguiente.calcular_fibo(numero_ingresado, funcionamiento)
	end
  end
end