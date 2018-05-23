class Vaso
  attr_writer :cafe

  def initialize
    @cafe = false
  end

  def cantidad_de_azucar
  	return 10
  end

	def tiene_cafe?
    return @cafe
  end

  def tiene_azucar?
    return true
  end

  def tiene_te?
    return false
  end
end
