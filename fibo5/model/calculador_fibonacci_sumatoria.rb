require_relative './calculador_fibonacci'

class CalculadorFibonacciSumatoria < CalculadorFibonacci

	def calcular_fibo(numero_ingresado, funcionamiento)
		if(funcionamiento == 'sumatoria')
			self.calcular_sumatoria(numero_ingresado)
		else
		end
	end

	def calcular_sumatoria(numero_sucesiones)
		lista_numeros = self.calcular_sucesion(numero_sucesiones)
		sumatoria = 0
		lista_numeros.each do |numero|
			sumatoria += numero
		end
		return sumatoria
	end
end