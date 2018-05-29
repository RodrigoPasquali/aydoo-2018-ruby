require 'sinatra'
require 'sinatra/json'
require_relative './model/calculador_fibonacci'
require_relative './model/calculador_fibonacci_lista'

get '/fibonacci/:n/:funcionamiento' do
  numero = params[:n].to_i
  funcionamiento = params[:funcionamiento]
  calculador_fibo = CalculadorFibonacciLista.new
  resultado = calculador_fibo.calcular_fibo(numero, funcionamiento)
  json({"fibonacci": { "limite": numero, "lista": resultado } })
end
