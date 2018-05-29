require 'rspec' 
require_relative '../model/calculador_fibonacci_lista'
require_relative '../model/calculador_fibonacci_sumatoria'


describe 'Calculador Fibonacci' do

  let(:calculador) { CalculadorFibonacciLista.new }  

  it 'calcular lista Fibonacci de 5 deberia devolver 0 1 1 2 3' do
  	valor_esperado = [0, 1, 1, 2, 3]

   	valor_obtenido = calculador.calcular_fibo(5,'lista')

    expect(valor_obtenido).to eq(valor_esperado)
  end 

	it 'calcular lista Fibonacci de 0 deberia devolver 0' do
  	valor_esperado = [0]

    valor_obtenido = calculador.calcular_fibo(0,'lista')

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular lista Fibonacci de 1 deberia devolver 0 1' do
  	valor_esperado = [0,1]

    valor_obtenido = calculador.calcular_fibo(1,'lista')

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular sumatoria Fibonacci de 0 deberia devolver 0' do
  	valor_esperado = 0

    valor_obtenido = calculador.calcular_fibo(0,'sumatoria')

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular sumatoria Fibonacci de 1 deberia devolver 1' do
  	valor_esperado = 1

    valor_obtenido = calculador.calcular_fibo(1,'sumatoria')

    expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'calcular sumatoria Fibonacci de 6 deberia devolver 12' do
  	valor_esperado = 12

    valor_obtenido = calculador.calcular_fibo(6,'sumatoria')

    expect(valor_obtenido).to eq(valor_esperado)
  end
end

