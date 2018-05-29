require 'sinatra'
require 'sinatra/json'
require_relative './model/calculador_fibonacci'

get '/fibonacci/:n/lista' do
  numero = params[:n].to_i
  calculador_fibo = CalculadorFibonacci.new
  resultado = calculador_fibo.calcular_en_lista(numero)
  json({"fibonacci": { "limite": numero, "lista": resultado } })
end

get '/fibonacci/:n/sumatoria' do
  numero = params[:n].to_i
  calculador_fibo = CalculadorFibonacci.new
  resultado = calculador_fibo.calcular_sumatoria(numero)
  json({"fibonacci": { "limite": numero, "lista": resultado } })
end
