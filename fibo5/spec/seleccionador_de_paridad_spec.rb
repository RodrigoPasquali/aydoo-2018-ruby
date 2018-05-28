require 'rspec' 
require_relative '../model/seleccionador_de_paridad'

describe 'Seleccionador de Paridad' do

  let(:seleccionador) { SeleccionadorDeParidad.new }  
   
  it 'calcular numeros de pares de sucesion de 5 deberia devolver 2' do
  	valor_esperado = [2]
  	lista_numeros = [0,1,1,2,3]

  	seleccionador.calcular_numeros_pares_e_impares(lista_numeros)
  	valor_obtenido = seleccionador.numeros_pares

    expect(valor_obtenido).to eq(valor_esperado)
  end
  
  it 'calcular numeros de pares de sucesion de 7 deberia devolver 2 8' do
  	valor_esperado = [2,8]
  	lista_numeros = [0,1,1,2,3,5,8]

  	seleccionador.calcular_numeros_pares_e_impares(lista_numeros)
  	valor_obtenido = seleccionador.numeros_pares

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular numeros de impares de sucesion de 5 deberia devolver 1 3' do
  	valor_esperado = [1,3]
  	lista_numeros = [0,1,1,2,3]

  	seleccionador.calcular_numeros_pares_e_impares(lista_numeros)
  	valor_obtenido = seleccionador.numeros_impares

    expect(valor_obtenido).to eq(valor_esperado)
  end
end