require 'rspec' 
require_relative '../model/hacedor_de_cafe'
require_relative '../model/vaso'

describe HacedorDeCafe do
	let(:un_vaso) {Vaso.new}

	subject {HacedorDeCafe.new}

	it 'tieneCafe? deberia ini false' do
		expect(un_vaso.tiene_cafe?).to be_falsey
	end

	it 'vaso deberia inicializarse con todas las variables false y cant azucar 0' do
		expect(un_vaso.tiene_cafe?).to be_falsey
		expect(un_vaso.tiene_te?).to be_falsey
		expect(un_vaso.tiene_azucar?).to be_falsey
		expect(un_vaso.cantidad_de_azucar).to eq 0
	end

	it 'tieneCafe? deberia devolver true cuando se prepara en el vaso' do
		subject.preparar_en_este_vaso(un_vaso)

		expect(un_vaso.tiene_cafe?).to be_truthy
	end

end