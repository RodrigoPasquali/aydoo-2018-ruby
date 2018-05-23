require_relative './hacedor_de_te'

class HacedorDeTeConLeche
	def initialize
		@hacedor_de_te = HacedorDeTe.new
	end

	def preparar_en_este_vaso(vaso)
		@hacedor_de_te.preparar_en_este_vaso(vaso)
	end
end