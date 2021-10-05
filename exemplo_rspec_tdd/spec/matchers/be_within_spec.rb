describe 'be_within' do
  #delta 0.5
  # exemplo: 11.4, 11.5, 11.6, 11.7 ...
  it { expect(12.5).to be_within(0.5).of(12.0) }
  it { expect([12.1, 12.2]).to all (be_within(0.5).of(12.0)) }
end 