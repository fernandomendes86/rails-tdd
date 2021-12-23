require 'rails_helper'

feature "Welcomes", type: :feature do

  scenario 'Mostra a mensagem de Bem-Vindo' do
    visit(root_path)
    expect(page).to have_content('Bem-Vindo')  
  end

  scenario 'Verificar o link cadastro de clientes' do
    visit(root_path)
    #expect(page).to have_selector('ul li a')
    expect(find('ul li')).to have_link('Cadastro de Clientes')  
  end

end
