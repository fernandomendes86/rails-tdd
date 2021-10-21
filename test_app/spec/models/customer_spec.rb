require 'rails_helper'

RSpec.describe Customer, type: :model do

  fixtures :customers

  it 'Create a Customer' do
    customer = customers(:abelao)
    expect(customer.full_name).to eq("Sr. Abelão")
  end
end
