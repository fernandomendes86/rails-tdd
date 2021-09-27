require "pessoa"

describe 'Atributos' do
  it 'have attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Ruby"
    pessoa.idade = 21
    expect(pessoa).to have_attributes(
      nome: start_with("R") ,
      idade: be >=20 
    )
  end


end