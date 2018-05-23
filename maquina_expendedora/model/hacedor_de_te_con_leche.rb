require_relative './hacedor_de_te'
require_relative './lechero'

class HacedorDeTeConLeche
	def initialize
		@hacedor_de_te = HacedorDeTe.new
		@lechero = Lechero.new
	end

	def preparar_en_este_vaso(vaso)
		@hacedor_de_te.preparar_en_este_vaso(vaso)
		@lechero.agregar_leche(vaso)
		return vaso
	end
end