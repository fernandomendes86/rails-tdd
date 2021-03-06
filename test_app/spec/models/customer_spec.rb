require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers

  it '#full_name - Sobrescrevendo atributos' do
    customer = create(:customer, name: "Abelão")
    #p customer.email
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

  it 'Cliente Masculino' do
    customer = create(:customer_male_vip)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(true)
  end

  it 'travel to' do
    travel_to Time.zone.local(2004, 11, 23, 01, 04, 44) do
      @customer = create(:customer_vip)
    end

    #expect(@customer.created_at).to eq(Time.new(2004, 11, 23, 01, 04, 44))
    expect(@customer.created_at).to be < Time.now

  end

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end
