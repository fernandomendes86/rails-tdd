describe (1..5), 'Range' do

  it '#cover' do
    # inferência
    is_expected.to cover(2)
    #
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(0,6)

  end

  #sintaxe de 1 linha
  it { is_expected.to cover(2) }
  it { is_expected.to cover(2,5) }
  it { is_expected.not_to cover(0,6) }

  it { expect(subject).not_to cover(0,6) }
end