class Vaso
  attr_writer :cafe, :te, :azucar, :cant_azucar, :leche

  def initialize
    @cafe = false
    @te = false
    @cant_azucar = 0
    @azucar = false       
    @leche = false
  end

  def cantidad_de_azucar
    return @cant_azucar
  end

	def tiene_cafe?
    return @cafe
  end

  def tiene_azucar?
    if (@cant_azucar > 0)
      @azucar = true       
    else
      @azucar = false
    end
    return @azucar
  end

  def tiene_te?
    return @te
  end

  def tiene_leche?
    return @leche
  end

end
