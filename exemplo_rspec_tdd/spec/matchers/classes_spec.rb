describe 'Classes' do
  
  it 'be_instance_of' do
    #exatemente
    expect(10).to be_instance_of(Integer) 
  end

  it 'be_kind_of' do
    #herança
    expect(10).to be_kind_of(Object)
  end

  it 'be_an / be_a' do
    expect("riby").to be_an(String)
    expect("ruby").to be_a(String) 
  end

  it 'respond_to method' do
    expect("ruby").to respond_to(:size)
  end

end