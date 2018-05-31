require 'rspec' 
require_relative '../model/seleccionador_de_paridad'
require_relative '../model/seleccionador_par'

describe 'Seleccionador de Paridad' do
  let(:seleccionador) { SeleccionadorPar.new }  
   
  it 'calcular numeros de pares de sucesion de 5 deberia devolver 2' do
    valor_esperado = [2]
    lista_numeros = [0,1,1,2,3]

    valor_obtenido = seleccionador.obtener_numeros(lista_numeros, 'par')

    expect(valor_obtenido).to eq(valor_esperado)
  end
 
  it 'calcular numeros de pares de sucesion de 7 deberia devolver 2 8' do
  	valor_esperado = [2,8]
  	lista_numeros = [0,1,1,2,3,5,8]

    valor_obtenido = seleccionador.obtener_numeros(lista_numeros, 'par')

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular numeros de impares de sucesion de 5 deberia devolver 1 3' do
  	valor_esperado = [1,3]
  	lista_numeros = [0,1,1,2,3]

    valor_obtenido = seleccionador.obtener_numeros(lista_numeros, 'impar')

    expect(valor_obtenido).to eq(valor_esperado)
  end
end