require 'sinatra'
require 'sinatra/json'
require_relative './model/calculador_fibonacci_lista'
require_relative './model/sentido_directo'
require_relative './model/seleccionador_par'

get '/fibonacci/:n/:funcionamiento' do
  numero = params[:n].to_i
  if(numero ==0)
  	hatl 400, json({"error": 'Opción no válida'})
  end
  funcionamiento = params[:funcionamiento]
  calculador_fibo = CalculadorFibonacciLista.new
  resultado = calculador_fibo.calcular_fibo(numero, funcionamiento)
  json({ "fibonacci": { "limite": numero, "#{funcionamiento}": resultado } })
end

get '/fibonacci/:n' do
  numero = params[:n].to_i
  if (numero == 0)
	halt 400 , json({"error": 'Opción no válida'})
  end
  sentido = params[:sentido].to_s
  paridad = params[:solo].to_s
  funcionamiento = 'lista'
  calculador_fibo = CalculadorFibonacciLista.new
  aplicador_sentido = SentidoDirecto.new
  seleccionar_paridad = SeleccionadorPar.new
  lista_numeros = calculador_fibo.calcular_fibo(numero, funcionamiento)
  resultado_sentido = aplicador_sentido.aplicar_sentido(lista_numeros, sentido)
  if (resultado_sentido == nil)
	halt 400 , json({"error": 'Opción no válida'})
  end
  resultado_paridad = seleccionar_paridad.obtener_numeros(resultado_sentido, paridad)
  if (resultado_paridad == nil)
	halt 400 , json({"error": 'Opción no válida'})
  end
  json({ "fibonacci": { "limite": numero, "lista": resultado_paridad } })
end
