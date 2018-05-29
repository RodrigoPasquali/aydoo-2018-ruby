require 'rspec' 
require_relative '../model/sentido_directo'

describe 'Sentido' do

  let(:sentido) { SentidoDirecto.new }  

  it 'el sentido directo de 1 2 3 deberia ser 123' do
    array = [1,2,3]
    valor_esperado = [1,2,3]

    valor_obtenido = sentido.aplicar_sentido(array, 'directo')

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'el sentido directo de 0 1 1 3 deberia ser 0 1 1 3' do
    array = [0,1,1,3]
    valor_esperado = [0,1,1,3]

    valor_obtenido = sentido.aplicar_sentido(array, 'directo')

    expect(valor_obtenido).to eq(valor_esperado)
  end
   
  it 'el sentido inverso de 1 2 3 deberia ser 3 2 1' do
    array = [1,2,3]
    valor_esperado = [3,2,1]

    valor_obtenido = sentido.aplicar_sentido(array, 'inverso')

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'el sentido inverso de  0 1 1 3 deberia ser 3 1 1 0' do
    array = [0,1,1,3]
    valor_esperado = [3,1,1,0]

    valor_obtenido = sentido.aplicar_sentido(array, 'inverso')

    expect(valor_obtenido).to eq(valor_esperado)
  end
end