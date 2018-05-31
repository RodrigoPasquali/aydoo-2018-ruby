require 'rspec'
require 'rack/test'
require_relative '../app'

describe 'Aplicacion Sinatra' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "/fibonacci/5 deberia devolver {fibonacci:{limite:5,lista:[0,1,1,2,3]}} " do
  	get '/fibonacci/5'
  	valorEsperado = "{\"fibonacci\":{\"limite\":5,\"lista\":[0,1,1,2,3]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/4/lista deberia devolver {fibonacci:{limite:5,lista:[0,1,1,2]}} " do
  	get '/fibonacci/4/lista'
  	valorEsperado = "{\"fibonacci\":{\"limite\":4,\"lista\":[0,1,1,2]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/5/sumatoria deberia devolver {fibonacci:{limite:5,sumatoria:7}} " do
  	get '/fibonacci/5/sumatoria'
  	valorEsperado = "{\"fibonacci\":{\"limite\":5,\"sumatoria\":7}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/5?sentido=directo deberia devolver {fibonacci:{limite:5,lista:[0,1,1,2,3]}} " do
  	get '/fibonacci/5?sentido=directo'
  	valorEsperado = "{\"fibonacci\":{\"limite\":5,\"lista\":[0,1,1,2,3]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/5?sentido=inverso deberia devolver {fibonacci:{limite:5,lista:[3,2,1,1,0]}} " do
  	get '/fibonacci/5?sentido=inverso'
  	valorEsperado = "{\"fibonacci\":{\"limite\":5,\"lista\":[3,2,1,1,0]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/5?sentido=escalera deberia devolver {error:Opción no válida} " do
  	get '/fibonacci/5?sentido=escalera'
  	valorEsperado = "{\"error\":\"Opción no válida\"}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 400
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?solo=par deberia devolver {fibonacci:{limite:8,lista:[2,8]}} " do
  	get '/fibonacci/8?solo=par'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[2,8]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?solo=impar deberia devolver {fibonacci:{limite:8,lista:[1,3,5,13]}} " do
  	get '/fibonacci/8?solo=impar'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[1,3,5,13]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/5?solo=gato deberia devolver {error:Opción no válida} " do
  	get '/fibonacci/5?sentido=gato'
  	valorEsperado = "{\"error\":\"Opción no válida\"}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 400
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?sentido=directo&solo=par deberia devolver {fibonacci:{limite:5,lista:[2,8]}} " do
  	get '/fibonacci/8?sentido=directo&solo=par'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[2,8]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?sentido=directo&solo=impar deberia devolver {fibonacci:{limite:5,lista:[1,3,5,13]}} " do
  	get '/fibonacci/8?sentido=directo&solo=impar'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[1,3,5,13]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/5?sentido=directo&solo=perro deberia devolver {error:Opción no válida} " do
  	get '/fibonacci/5?sentido=directo&solo=perro'
  	valorEsperado = "{\"error\":\"Opción no válida\"}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 400
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/5?sentido=loro&solo=par deberia devolver {error:Opción no válida} " do
  	get '/fibonacci/5?sentido=loro&solo=par'
  	valorEsperado = "{\"error\":\"Opción no válida\"}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 400
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?solo=impar&sentido=directo deberia devolver {fibonacci:{limite:5,lista:[1,3,5,13]}} " do
  	get '/fibonacci/8?solo=impar&sentido=directo'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[1,3,5,13]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?solo=impar&sentido=inverso deberia devolver {fibonacci:{limite:5,lista:[13,5,3,1]}} " do
  	get '/fibonacci/8?solo=impar&sentido=inverso'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[13,5,3,1]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?solo=par&sentido=inverso deberia devolver {fibonacci:{limite:5,lista:[8,2]}} " do
  	get '/fibonacci/8?solo=par&sentido=inverso'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[8,2]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end

  it "/fibonacci/8?solo=par&sentido=directo deberia devolver {fibonacci:{limite:5,lista:[2,8]}} " do
  	get '/fibonacci/8?solo=par&sentido=directo'
  	valorEsperado = "{\"fibonacci\":{\"limite\":8,\"lista\":[2,8]}}"

    valorObtenido = last_response.body

 	expect(last_response.status).to eq 200
    expect(valorObtenido).to eq valorEsperado
  end
end
