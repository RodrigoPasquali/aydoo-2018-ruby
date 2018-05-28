require 'rspec' 
require_relative '../model/calculador_fibonacci'

describe 'Calculador Fibonacci' do

  let(:calculador) { CalculadorFibonacci.new }  
   
  it 'calcular lista Fibonacci de 5 deberia devolver 0 1 1 2 3' do
   	valor_obtenido = calculador.calcular_en_lista(5)
  	valor_esperado = [0, 1, 1, 2, 3]
    expect(valor_obtenido).to eq(valor_esperado)
  end

	it 'calcular lista Fibonacci de 0 deberia devolver 0' do
   	valor_obtenido = calculador.calcular_en_lista(0)
  	valor_esperado = [0]
    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular lista Fibonacci de 1 deberia devolver 0 1' do
   	valor_obtenido = calculador.calcular_en_lista(0)
  	valor_esperado = [0]
    expect(valor_obtenido).to eq(valor_esperado)
  end
 
  it 'calcular sumatoria Fibonacci de 0 deberia devolver 0' do
   	valor_obtenido = calculador.calcular_sumatoria(0)
  	valor_esperado = 0
    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular sumatoria Fibonacci de 1 deberia devolver 1' do
   	valor_obtenido = calculador.calcular_sumatoria(1)
  	valor_esperado = 1
    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular sumatoria Fibonacci de 6 deberia devolver 12' do
   	valor_obtenido = calculador.calcular_sumatoria(6)
  	valor_esperado = 12
    expect(valor_obtenido).to eq(valor_esperado)
  end

end

