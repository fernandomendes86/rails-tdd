describe 'Matchers de comparação' do
  x = "ruby"
  y = "ruby"
  it '#equal - Testa objetos iguais' do  
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it "#be - Teste se é o mesmo objeto" do
    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it "#eql - Testa valor" do
    expect(x).to eql(y)
    #alias
    expect(x).to eq(y)
  end

end