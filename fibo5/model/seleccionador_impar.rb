require_relative './seleccionador_de_paridad'

class SeleccionadorImpar < SeleccionadorDeParidad
	def obtener_numeros(lista_numeros, paridad)
		if(paridad == 'impar')
			calcular_numeros_pares_e_impares(lista_numeros)
			return @numeros_impares
		else
			if (paridad == '')
				return lista_numeros
			else
				return "Opción no válida"
			end
		end
	end
end