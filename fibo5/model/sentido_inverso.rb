require_relative './sentido'

class SentidoInverso < Sentido
	def aplicar_sentido(lista_numeros, sentido)
		if (sentido == 'inverso')
			return self.sentido_inverso(lista_numeros)
		else
			return "Opción no válida"
		end
	end

	def sentido_inverso(lista_numeros)
		return lista_numeros.sort.reverse!
	end
end