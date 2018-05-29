require_relative './sentido'

class SentidoInvalido < Sentido
	def aplicar_sentido
		return 'Opción no válida'
	end
end