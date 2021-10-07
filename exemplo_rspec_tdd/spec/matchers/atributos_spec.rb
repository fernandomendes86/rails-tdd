require "pessoa"

describe 'Atributos' do

  # around
  # around(:each) do |teste|
  #   teste.run
  # end

  before(:each) do
    p "ANTES >>>"
    @pessoa = Pessoa.new
    p "#{@pessoa.inspect}"
  end
  
  after(:each) do
    p "DEPOIS >>>"
    p "#{@pessoa.inspect}"
  end
  
  it 'have attributes 1' do
    @pessoa.nome = "Ruby"
    @pessoa.idade = 21
    expect(@pessoa).to have_attributes(
      nome: start_with("R") ,
      idade: be >=20 
    )
  end

  it 'have attributes 2' do
    @pessoa.nome = "Rails"
    @pessoa.idade = 21
    expect(@pessoa).to have_attributes(
      nome: start_with("R") ,
      idade: be >=20 
    )
  end

end