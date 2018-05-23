require 'rspec' 
require_relative '../model/hacedor_de_te'
require_relative '../model/vaso'

describe HacedorDeTe do
	let(:un_vaso) {Vaso.new}

	subject {HacedorDeTe.new}

	it 'tieneTe? deberia inicializarse false' do
		expect(un_vaso.tiene_cafe?).to be_falsey
	end

	it 'tieneTe? deberia devolver true cuando se prepara en el vaso' do
		subject.preparar_en_este_vaso(un_vaso)

		expect(un_vaso.tiene_te?).to be_truthy
	end
end