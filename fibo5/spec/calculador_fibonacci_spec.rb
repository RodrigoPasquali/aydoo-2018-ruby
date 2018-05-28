require 'rspec' 
require 'byebug'
require_relative '../model/calculador_fibonacci'

describe 'Calculador Fibonacci' do

  let(:calculador) { CalculadorFibonacci.new }  
   
  it 'calcular Fibonacci de 5 deberia devolver 0 1 1 2 3' do
   	valor_obtenido = calculador.calcular_sucecion(5)
  	valor_esperado = [0, 1, 1, 2, 3]
    expect(valor_obtenido).to eq(valor_esperado)
  end

end
