describe 'Teste double' do

  it '-- ' do
    user = double('User')
    allow(user).to receive(:name).and_return('Ruby') 
    allow(user).to receive(:password).and_return('secret') 
    p user.name
    p user.password   
  end
  
end