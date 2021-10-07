module HelperComposicao
  #HelperComposicao::NUMBERS
  NUMBERS = [1,2,3]
  
  def fruta
    %w(banana laranja uva).sample
  end
  
  #HelperComposicao.fruta
  #HelperComposicao::fruta
  module_function :fruta
end