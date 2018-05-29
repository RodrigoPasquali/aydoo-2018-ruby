require_relative './sentido'
require_relative './sentido_invalido'

class SentidoInverso < Sentido
	def initialize
		@sentido_siguiente = SentidoInvalido.new
	end

	def aplicar_sentido(lista_numeros, sentido)
		if (sentido == 'inverso')
			return self.sentido_inverso(lista_numeros)
		else
			return @sentido_siguiente.aplicar_sentido
		end
	end

	def sentido_inverso(lista_numeros)
		return lista_numeros.sort.reverse!
	end
end