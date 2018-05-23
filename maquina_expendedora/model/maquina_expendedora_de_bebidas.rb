require_relative './hacedor_de_cafe_con_leche'
require_relative './hacedor_de_te_con_leche'
require_relative './azucarero'

class MaquinaExpendedoraDeBebidas
	attr_reader :cant_azucar

	def initialize
		@hacedor_cafe_leche = HacedorDeCafeConLeche.new
		@hacedor_te_leche = HacedorDeTeConLeche.new
		@azucarero = Azucarero.new
	end

  def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
  	@hacedor_cafe_leche.preparar_en_este_vaso(un_vaso)
  	@azucarero.agregar_azucar(un_vaso, cantidad_azucar)
  end

  def hacer_te_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
  	@hacedor_te_leche.preparar_en_este_vaso(un_vaso)
  	@azucarero.agregar_azucar(un_vaso, cantidad_azucar)
  end
end