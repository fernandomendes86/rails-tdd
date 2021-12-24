require 'rails_helper'

feature "Customers", type: :feature do
  
  scenario 'Verifica Link Cadastro de Clientes' do
    visit(root_path)
    expect(page).to have_link('Cadastro de Clientes')
  end

  scenario 'Verifica link de Novo Cliente' do
    visit(root_path)
    click_on('Cadastro de Clientes')
    expect(page).to have_content('Listando Clientes')
    expect(page).to have_content('Novo Cliente')
  end

  scenario 'Cadastra um cliente' do
    visit(new_customer_path)

    customer_name = Faker::Name.name
    fill_in "Nome",	with: customer_name
    fill_in "Email",	with: Faker::Internet.email
    fill_in "Telefone", with: Faker::PhoneNumber.phone_number
    attach_file 'Foto do Perfil', "#{Rails.root}/spec/fixtures/avatar.png"
    choose option: ['S', 'N'].sample
    click_on 'Criar Cliente'

    expect(page).to have_content 'Cliente cadastrado com sucesso!'
    expect(Customer.last.name).to eq(customer_name)


  end

  scenario 'Não cadastra um cliente inválido' do
    visit(new_customer_path)
    click_on 'Criar Cliente'
    expect(page).to have_content('não pode ficar em branco')
  end

  scenario 'Mostra um cliente' do
    customer = create(:customer)

    visit(customer_path(customer.id))
    expect(page).to have_content(customer.name)
    expect(page).to have_content(customer.email)
    expect(page).to have_content(customer.phone)

  end

  scenario 'Testando index' do 
    customer1 = create(:customer)

    customer2 = create(:customer)

    visit(customers_path)
    expect(page).to have_content(customer1.name).and have_content(customer2.name)

  end

  scenario 'Atualiza um cliente' do
    customer = create(:customer)

    new_name = Faker::Name.name
    visit(edit_customer_path(customer.id))
    fill_in('Nome', with: new_name)
    click_on 'Atualizar Cliente'
    expect(page).to have_content('Cliente atualizado com sucesso!')
    expect(page).to have_content(new_name)

  end

  scenario 'Clica no link Mostrar' do
    customer = create(:customer)

    visit(customers_path)
    find(:xpath, "/html/body/table/tbody/tr[1]/td[2]/a").click
    expect(page).to have_content("Mostrando cliente")
  end

  scenario 'Clica no link Editar da Index' do
    customer = create(:customer)

    visit(customers_path)
    find(:xpath, "/html/body/table/tbody/tr[1]/td[3]/a").click
    expect(page).to have_content("Editando Cliente")
  end

  scenario 'Apaga o cliente', js: true do
    customer = create(:customer)

    visit(customers_path)
    find(:xpath, "/html/body/table/tbody/tr[1]/td[4]/a").click
    1.second
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content('Cliente excluído com sucesso!')
    
  end

  


end
