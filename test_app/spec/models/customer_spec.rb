require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers

  it '#full_name - Sobrescrevendo atributos' do
    customer = create(:customer, name: "Abelão")
    expect(customer.full_name).to start_with("Sr. Abelão")
  end

  it '#Herança' do
    customer = create(:customer_vip)
    expect(customer.vip).to eq(true)
  end

  it '#full_name' do
    customer = create(:user) # com apelidos
    expect(customer.full_name).to start_with("Sr. ")
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer)
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it 'Atributo transitório' do
    customer = create(:customer_default, upcased: true)
    expect(customer.name.upcase).to eq(customer.name)
  end

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end
