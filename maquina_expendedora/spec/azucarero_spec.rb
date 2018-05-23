require 'rspec' 
require_relative '../model/azucarero'
require_relative '../model/vaso'

describe Azucarero do
	let(:un_vaso) {Vaso.new}

	subject {Azucarero.new}

	it 'vaso deberia tener 3 cucharadas de azucar' do
		subject.agregar_azucar(un_vaso, 3)

		expect(un_vaso.tiene_azucar?).to be_truthy
		expect(un_vaso.cantidad_de_azucar).to eq 3
	end
end