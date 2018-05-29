require_relative './seleccionador_impar'
require_relative './seleccionador_de_paridad'

class SeleccionadorPar < SeleccionadorDeParidad
	
	def initialize
		@siguiente_seleccionador = SeleccionadorImpar.new
	end

	def obtener_numeros(lista_numeros, paridad)
		if(paridad == 'par')
			calcular_numeros_pares_e_impares(lista_numeros)
			return @numeros_pares
		else
			return @siguiente_seleccionador.obtener_numeros(lista_numeros, paridad)
		end
	end
end