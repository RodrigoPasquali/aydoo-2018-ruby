require_relative './hacedor_de_cafe_con_leche'

class MaquinaExpendedoraDeBebidas
	attr_reader :cant_azucar

	def initialize
		@hacedor = HacedorDeCafeConLeche.new
	end

  def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
  	@hacedor.preparar_en_este_vaso(un_vaso)
  end
end