class SeleccionadorDeParidad
	attr_reader :numeros_pares, :numeros_impares
	attr_accessor :siguiente_seleccionador
	
	def initialize
		@numeros_pares = [] 
		@numeros_impares = [] 
	end
	
	def calcular_numeros_pares_e_impares(lista_numeros)
		@numeros_pares = lista_numeros.select{|numero| (numero % 2) == 0}
		@numeros_pares.delete(0)
		@numeros_impares = lista_numeros.select{|numero| (numero % 2) != 0}
		@numeros_impares.uniq!
	end
end	