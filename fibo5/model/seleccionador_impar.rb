class SeleccionadorImpar < SeleccionadorDeParidad	
	def obtener_numeros(lista_numeros, paridad)
		if(paridad == 'impar')
			calcular_numeros_pares_e_impares(lista_numeros)
			return @numeros_impares
		else
			return "Opción no válida"
		end
	end
end