class Vaso
  attr_writer :cafe, :te, :azucar, :cant_azucar

  def initialize
    @cafe = false
    @te = false
    @azucar = false
    @cant_azucar = 0
  end

  def cantidad_de_azucar
  	return @cant_azucar
  end

	def tiene_cafe?
    return @cafe
  end

  def tiene_azucar?
    return @azucar
  end

  def tiene_te?
    return @te
  end
end
