require_relative '../model/vaso'

describe Vaso do
	subject {Vaso.new}

	it 'vaso deberia inicializarse con todas las variables false y cant azucar 0' do
		expect(subject.tiene_cafe?).to be_falsey
		expect(subject.tiene_te?).to be_falsey
		expect(subject.tiene_azucar?).to be_falsey
		expect(subject.cantidad_de_azucar).to eq 0
	end
end