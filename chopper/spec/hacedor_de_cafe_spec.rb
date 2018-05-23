require 'rspec' 
require_relative '../model/hacedor_de_cafe'
require_relative '../model/vaso'

describe HacedorDeCafe do
	let(:un_vaso) {Vaso.new}

	subject {HacedorDeCafe.new}

	it 'tieneCafe? deberia devolver false' do
		expect(un_vaso.tiene_cafe?).to be_falsey
	end
end