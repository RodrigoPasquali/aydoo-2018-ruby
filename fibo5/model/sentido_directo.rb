require_relative './sentido'
require_relative './sentido_inverso'

class SentidoDirecto < Sentido
	def initialize
		@sentido_siguiente = SentidoInverso.new
	end

	def aplicar_sentido(lista_numeros, sentido)
		if(sentido == 'directo')
			return lista_numeros			
		else
			return @sentido_siguiente.aplicar_sentido(lista_numeros, sentido)	
		end
	end
end