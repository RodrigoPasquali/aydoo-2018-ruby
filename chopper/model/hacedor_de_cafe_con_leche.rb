require_relative './hacedor_de_cafe'
#require_relative './lechero'

class HacedorDeCafeConLeche

  def initialize
    @cafetero = HacedorDeCafe.new
#    @lechero = Lechero.new
  end

  def preparar_en_este_vaso(un_vaso)
    @cafetero.preparar_en_este_vaso(un_vaso)
#    @lechero.preparar_en_este_vaso(un_vaso)
    return un_vaso
  end
 
end
