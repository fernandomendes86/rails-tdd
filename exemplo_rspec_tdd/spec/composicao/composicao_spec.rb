#require './spec/composicao/helper'
require_relative 'helper'

describe 'Ruby on Rails' do
  include HelperComposicao

  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }

  # def fruta
  #   %w(banana laranja uva).sample
  # end
end