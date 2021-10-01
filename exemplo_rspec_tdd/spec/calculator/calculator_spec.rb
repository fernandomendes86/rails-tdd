require "calculator"

describe Calculator do

  context '#div ' do
    it 'by zero' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
    end
  end

  context '#sum' do

    it 'with positive numbers' do
      result = subject.sum(5,7)
      expect(result).to eq(12)
    end

    specify 'with negative numbers' do
      result = subject.sum(-5,-7)
      expect(result).to eq(-12)
    end
  
  end

end