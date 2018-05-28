require 'rspec' 
require_relative '../model/calculador_fibonacci'

describe 'Calculador Fibonacci' do

  let(:calculador) { CalculadorFibonacci.new }  
   
  it 'calcular Fibonacci de 5 deberia devolver 0 1 1 2 3' do
   	valor_obtenido = calculador.calcular_sucecion(5)
  	valor_esperado = [0, 1, 1, 2, 3]
    expect(valor_obtenido).to eq(valor_esperado)
  end

	it 'calcular Fibonacci de 0 deberia devolver 0' do
   	valor_obtenido = calculador.calcular_sucecion(0)
  	valor_esperado = [0]
    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular Fibonacci de 1 deberia devolver 0 1' do
   	valor_obtenido = calculador.calcular_sucecion(0)
  	valor_esperado = [0]
    expect(valor_obtenido).to eq(valor_esperado)
  end

end

