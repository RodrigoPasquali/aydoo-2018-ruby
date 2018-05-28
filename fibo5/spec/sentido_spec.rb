require 'rspec' 
require_relative '../model/sentido'

describe 'Sentido' do

  let(:sentido) { Sentido.new }  
   
  it 'el sentido inverso de 1 2 3 deberia ser 3 2 1' do
   	array = [1,2,3]
   	valor_obtenido = sentido.sentido_inverso(array)
  	valor_esperado = [3,2,1]
    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'el sentido inverso de  0 1 1 3 deberia ser 3 1 1 0' do
   	array = [0,1,1,3]
   	valor_obtenido = sentido.sentido_inverso(array)
  	valor_esperado = [3,1,1,0]
    expect(valor_obtenido).to eq(valor_esperado)
  end

end