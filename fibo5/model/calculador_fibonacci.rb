class CalculadorFibonacci
	attr_accessor :calculador_siguiente

	def initialize
		@calculador_siguiente = nil
	end

	def calcular_sucesion(numero_sucesiones)
		lista_numeros = Array.new(numero_sucesiones)
		lista_numeros[0] = 0
		numero1 = 0
		numero2 = 1
		total = 0
		if (numero_sucesiones >= 1)
			lista_numeros[1] = 1
			i = 2
			while (i < numero_sucesiones)
				total = numero1 + numero2
				numero1 = numero2
				numero2 = total
				lista_numeros[i] = total
				i += 1
			end
		end
		return lista_numeros
	end
end