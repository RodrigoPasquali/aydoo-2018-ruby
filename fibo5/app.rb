require 'sinatra'
require 'sinatra/json'
require_relative './model/calculador_fibonacci'
require_relative './model/calculador_fibonacci_lista'
require_relative './model/sentido'



get '/fibonacci/:n/:funcionamiento' do
  numero = params[:n].to_i
  funcionamiento = params[:funcionamiento]
  calculador_fibo = CalculadorFibonacciLista.new
  resultado = calculador_fibo.calcular_fibo(numero, funcionamiento)
  json({"fibonacci": { "limite": numero, "lista": resultado } })
end

get '/fibonacci/:n' do
  numero = params[:n].to_i
  sentido = params[:sentido].to_s
  funcionamiento = 'lista'
  calculador_fibo = CalculadorFibonacciLista.new
  aplicador_sentido = Sentido.new
  lista_numeros = calculador_fibo.calcular_fibo(numero, funcionamiento)
  resultado = 0
  if(sentido == 'inverso')
  	resultado = aplicador_sentido.sentido_inverso(lista_numeros)
  end
  json({"fibonacci": { "limite": numero, "lista": resultado } })
end
