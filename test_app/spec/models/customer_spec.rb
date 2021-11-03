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

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end
