require 'sinatra'
require 'sinatra/json'
#require_relative './model/calculador_fibonacci'
require_relative './model/calculador_fibonacci_lista'
#require_relative './model/sentido'
require_relative './model/sentido_directo'

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
  aplicador_sentido = SentidoDirecto.new
  lista_numeros = calculador_fibo.calcular_fibo(numero, funcionamiento)
  resultado = aplicador_sentido.aplicar_sentido(lista_numeros, sentido)
  if (resultado == 'Opción no válida')
  	json({"error": resultado })
  else
  	json({"fibonacci": { "limite": numero, "lista": resultado } })
  end	
end
