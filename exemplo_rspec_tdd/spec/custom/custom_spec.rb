RSpec::Matchers.define :be_a_multiple_of do |expected|

  # expected == 3
  # actual == subject == 18
  match do |actual|
    actual % expected == 0
  end

  failure_message do |actual|
    "expected that #{actual} would a multiple of #{expected}"
  end

  description do
    "be a multiple of #{expected}"
  end

end

describe 18, 'Custom Match' do
  it { is_expected.to be_a_multiple_of(3) }
end